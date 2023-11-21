# inundation_data
inundation dataset


Steps to update the inundation dataset

1. Utilize the CDEC_download.Rmd code for Lisbon sensor data
   Downloaded into the data raw folder, then copied and renamed into the overall folder for working
   1998-2002 data doesn't necessarily need to be re-downloaded, can just update 2003 onward
2. Combine the raw Lisbon data using LIS Stage Daily Average.Rmd to ensure formatting matches the WDL Fremont Weir and ISt data
3. Download the customized range for both Fremont Weir and ISt sensors from WDL
4. Combine the Fremont Weir and ISt data using the Fremont Weir ISt combine.Rmd code
5. Combine inundation data using Inundation Data Combine.Rmd

Inundation dataset needs to be updated before updating the Drift Invert dataset, as the inundation data is utilized in that data set
