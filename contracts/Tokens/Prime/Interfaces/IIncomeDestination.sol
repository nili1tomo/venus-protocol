pragma solidity 0.8.13;

interface IIncomeDestination {
    function updateAssetsState(address comptroller, address asset) external;
}
