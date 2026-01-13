Objective : 

The goal of this project is to analyze Uber ride request data and identify supply–demand gaps that lead to failed trip requests. The analysis focuses on when, where, and why failures occur and how they can be reduced.

Dataset Information :

The dataset contains ride request details including:

1. Pickup point (City / Airport)

2. Request and drop timestamps

3. Trip status (Completed / Cancelled / No cars available)

4. Driver allocation information

This data helps study time-based demand patterns and understand operational bottlenecks.

Analysis Summary (EDA):

This project explores:

1. Hourly and time-slot demand patterns

2. Status distribution across time

3. Pickup point behavior (City vs Airport)

4. Failure clustering (Cancellation vs No Cars Available)

5. Supply vs demand mismatch visualization

Tools Used: 

Python (Pandas, Matplotlib, Seaborn)

Jupyter Notebook

Excel (Pivot + Visualization)

SQL

PDF Reporting

Key Findings:

1. Night and late-night requests fail mainly due to No Cars Available

2. Morning slot failures happen mostly due to driver cancellations

3. City requests have higher total demand

4. Airport failures hurt more due to time-sensitive travel

5. Completed trips are more common during afternoon/evening hours

Business Recommendations: 

To reduce failures and improve completed trips, Uber can:

✔ Incentivize drivers during night/late-night hours
✔ Reduce morning cancellations through policies or driver rewards
✔ Assign specific airport driver pools for early morning and late-night demand
✔ Use forecasting to align driver supply with peak demand windows

Conclusion:

The data reveals that Uber’s main challenge is not lack of demand but mismatch between supply and demand. By improving shift planning and managing cancellation behavior, Uber can reduce failures, increase customer satisfaction, and convert more ride requests into successful trips.

Author:

Mohamed Imran M
