pragma solidity ^0.5.16;
pragma experimental ABIEncoderV2;

contract DiamondHarnessInterface {
    enum FacetCutAction {
        Add,
        Replace,
        Remove
    }

    struct FacetCut {
        address facetAddress;
        FacetCutAction action;
        bytes4[] functionSelectors;
    }

    struct FacetAddressAndPosition {
        address facetAddress;
        uint96 functionSelectorPosition;
    }

    struct Facet {
        address facetAddress;
        bytes4[] functionSelectors;
    }

    function getFacetAddress(bytes4 sig) public view returns (address);

    function diamondCut(FacetCut[] calldata _diamondCut) external;

    function getFacetFunctionSelectors(address _facet) external view returns (bytes4[] memory _facetFunctionSelectors);

    function getFacetPosition(address _facet) external view returns (uint256);

    function getAllFacetAddresses() external view returns (address[] memory facetAddresses_);

    function getAllFacets() external view returns (Facet[] memory facets);

    function getFacetAddressAndPosition(
        bytes4 _functionSelector
    ) external view returns (FacetAddressAndPosition memory);
}
