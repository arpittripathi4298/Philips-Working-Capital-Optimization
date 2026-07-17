# 📊 Working Capital Optimization Pipeline
An automated engineering pipeline that maps supply chain parameters, eliminates frozen warehouse capital, and materializes financial performance dashboards.

> ⚠️ **Dataset Notice:** All Philips branding and inventory data consist entirely of **synthetic data created by Gemini** for demonstration purposes.

---

## ⚡ 6-Second Executive Summary

*   **Core Function:** Optimates dynamic safety stock math modeling and triages operational risk segments (APAC, EMEA, LATAM).
*   **Business Impact:** Sustains a **95% service level** ($Z = 1.96$) while isolating excess capital exposure against a **22% annual carrying cost rate** (WACC + logistics overhead).
*   **The Pipeline:** **SQL** (Sanitization) $
ightarrow$ **Python** (Vectorized Models) $
ightarrow$ **Power BI** (Interactive Capital Analytics Dashboard).

---

## 🛠️ Data Architecture Flow

```
[ Synthetic Telemetry ] ➔ ( SQL: Clean & Filter ) ➔ [ Pandas: Math Models ] ➔ ( Power BI: Dashboard DataModel ) ➔ [ Dynamic KPIs ]
```

---

## 📊 Business Rules & Allocation Matrix

| Status | Mathematical Boundary | Tactical Operations Strategy |
| :--- | :--- | :--- |
| **🚨 Understocked / Risk** | $\text{On-Hand} < \text{Optimal Safety Stock}$ | **Stockout Risk:** Triggers automated supplier expediting workflows. |
| **✅ Optimal** | $\text{Optimal Safety Stock} \le \text{On-Hand} \le (\text{Optimal Safety Stock} \times 2)$ | **Efficient:** Warehouse volumes perfectly balance demand volatility. |
| **💸 Overstocked / Excess** | $\text{On-Hand} > (\text{Optimal Safety Stock} \times 2)$ | **Holding Waste:** Flags locked capital to trigger cash release tactics. |

---

## 📈 Technical Implementation Steps

### 1. Database Cleaning (`SQL_Fact_Inventory_Raw.sql`)
*   Filters out invalid rows (`Unit_Cost_EUR > 0`).
*   Calculates precision delivery tracking variance metrics:
    $$\text{Lead Time Variance Days} = \text{Actual Lead Time Days} - \text{Expected Lead Time Days}$$

### 2. Operations Mathematics (`Python_Philips_Optimized_Inventory_Mentrics.ipynb`)
*   **Safety Stock Engine:** Concurrently maps customer demand shocks and external lead time volatility:
    $$\text{Optimal Safety Stock} = \sqrt{(\text{Expected Lead Time} \times \sigma_d^2) + (\text{Average Daily Demand}^2 \times \sigma_{LT}^2)} \times Z$$
*   **Holding Cost Analysis:** Quantifies locked financial exposure:
    $$\text{Carrying Cost (EUR)} = (\text{On-Hand Inventory} \times \text{Unit Cost}) \times 0.22$$

### 3. Analytics Dashboard (`Philips Working Capital Optimization.pbix`)
*   **DataModel Ingestion:** Loads the optimized Python data outputs via structured relationships.
*   **Core Visuals:** 
    *   *Capital Optimization Scatter Plot:* Maps structural demand variance against lead time anomalies.
    *   *Holding Waste Card:* Identifies structural capital leaks (e.g., APAC holding waste tracked at **-18.56M**).
    *   *Operation Efficiency Grid:* Tracks granular total asset allocations by market segments (Connected Care, Personal Health).

---

## 📁 Repository Structure

*   `SQL_Fact_Inventory_Raw.sql` — Database schema creation, boundary conditions, and query filters.
*   `Python_Philips_Optimized_Inventory_Mentrics.ipynb` — Vectorized Pandas execution environment calculating math metrics.
*   `Philips Working Capital Optimization.pbix` — Power BI interactive executive dashboard containing the reporting architecture.