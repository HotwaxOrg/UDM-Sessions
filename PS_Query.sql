SELECT 
    psf.FACILITY_ID, 
    GROUP_CONCAT(DISTINCT psf.product_store_id ORDER BY psf.product_store_id SEPARATOR ', ') AS stores
FROM 
    product_store_facility psf
GROUP BY 
    psf.FACILITY_ID;