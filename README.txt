This code reads SEGD2.1 files output by Sercel software and converts the data into units of acceleration. Other outputs include instrument serial number, datetime of file, and frequency. The package is based on code written by Kevin Hall, available at https://github.com/GeoKylin/Segd2Segy.

The SEGD files can either be read using the jupyter notebook script (segd2_conversion.ipynb) or the MATLAB script (data_conversion.m). Both make use of the MATLAB sercel_SEGD2_reader.m function. Make sure the jupyter notebook is opened within the same folder as the sercel_SEGD2_reader.m script.

Tobermory Mackay-Champion, Feb. 2025
