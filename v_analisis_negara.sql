CREATE OR REPLACE VIEW v_analisis_negara AS
SELECT 
    so.negara_tujuan AS negara_tujuan,
    so.material_name AS nama_material,
    COUNT(so.po_number) AS total_po,
    SUM(so.qty_order_kg) AS total_target_kg,
    SUM(pp.hasil_produksi_kg) AS total_produksi_kg,
    SUM(pp.reject_kg) AS total_reject_kg,
    ROUND((SUM(pp.reject_kg) / SUM(pp.hasil_produksi_kg)) * 100, 2) AS rasio_reject_persen
FROM sales_orders so
JOIN ppic_production pp ON so.po_number = pp.po_number
GROUP BY so.negara_tujuan, so.material_name;
