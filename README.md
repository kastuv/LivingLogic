# LivingLogic

Problem Statement(we believed):
In Toronto, despite an abundance of housing options, a persistent housing crisis plagues the city. The issue lies not in the scarcity of housing but in the misalignment of resources with the needs of its residents. Take, for instance, the area near Seneca College, where over 50 apartments exist within a 20-mile radius, yet only 35% of students find accommodation there. Meanwhile, families and couples occupy these spaces, commuting long distances to work, also making them unhappy which leads them to search for another space as well.

Imagine a young couple living near Seneca College. While they have a roof over their heads, their daily grind involves juggling work commitments downtown with the demands of family life. The proximity to Seneca College makes little sense for them, yet they reside there due to the scarcity of suitable options elsewhere. While there are apartments available, they may not be designed to accommodate the unique needs of students who require proximity to their educational institution. This mismatch in housing location exacerbates their struggle, leading to constant upheaval as they search for a more conducive living arrangement.

Key Issue:
The heart of the problem lies in the disparity between the demographic needs of a particular area and the occupants therein. Families and professionals coexist in spaces better suited for students, creating an unsettling environment where everyone feels displaced and disconnected from their objective and purpose for that place.

Proposed Solution:
Our solution revolves around the core principle of "Don't reinvent the wheel, just realign it." By harnessing the power of machine learning and data science, we aim to optimize housing allocation and design in Toronto to better serve the needs of its diverse population. We take the establishment and renovation of apartments to the next level by optimizing them for specific purposes, rather than relying on random or automated processes.

Optimization will not be arbitrary; instead, it will be driven by a deep understanding of the demographics data of each locality. For instance, if an apartment is located near a college or schools, we will optimize it with students in mind. Instead of offering generic 2-bedroom apartments with double beds and standard amenities, we will analyze the demand and design the space accordingly. For example, if the apartment is on the 20th floor, we might optimize the 10th floor specifically for students' feasibility. This could involve partitioning the floor into multiple smaller rooms, each equipped with single or bunk beds, rather than keeping a single large space with a living area, TV, and sofa.

Consider the scenario where a student is searching for a room in an apartment near their college. Traditionally, they might be offered a 2-bedroom apartment with a kitchen, washroom, and double beds. However, this setup might not be feasible or practical for the majority of students. By optimizing the space to cater to students' needs, we can create a more suitable living environment. This could involve dividing the rooms further, providing bunk beds or single beds, and potentially making the kitchen smaller to accommodate more bedrooms.

Our approach acknowledges that the demand for housing varies across different demographic groups, and thus, the supply should be tailored accordingly. For students, this might mean prioritizing affordability and space efficiency over luxury amenities. By understanding and addressing the specific needs of each demographic, we aim to make housing more accessible and practical for everyone.

The current disconnect between supply and demand often results in expensive and impractical housing solutions. However, by realigning our approach to housing optimization based on demographic data, we can create spaces that better meet the needs of the population while also being cost-effective and efficient.

Example:
It's just not about students, it’s an example. Imagine an apartment complex near a hospital. Traditionally, this complex would offer standard units suitable for families and individuals. However, through our solution, the complex would be strategically partitioned, with designated floors reserved for medical professionals. This ensures that doctors, nurses, and other healthcare workers have convenient access to housing near their workplace, thereby enhancing their overall well-being and job satisfaction.



Key Features:

Demographic-Driven Design: Utilizing data-driven insights, we customize apartment spaces to cater to the specific needs of different demographic groups in various geographic areas. For instance, apartments near educational institutions may feature designated floors for students, while those near commercial hubs may prioritize units for professionals.

Efficient Resource Utilization: By aligning housing offerings with demand, our solution optimizes resource allocation, reducing waste and inefficiency in the housing market. This ensures that available housing resources are utilized effectively to address the needs of residents across the city.

Community Integration: Customized living spaces foster a sense of community and belonging among residents, promoting social cohesion and neighborhood vibrancy. By creating environments tailored to the needs of its inhabitants, our solution cultivates stronger connections and enhances overall well-being.

Example:
Consider a newly partitioned apartment complex near Seneca College. With designated floors for students, the complex becomes a hub for young professionals, fostering a vibrant community of learners. Shared amenities and collaborative spaces further encourage interaction and networking, enriching the overall living experience for residents.

Conclusion:
In conclusion, our solution offers a comprehensive approach to address the housing crisis in Toronto by realigning existing resources to better serve the needs of its diverse population. Through innovative design, efficient resource utilization, and community integration, we aim to create a more equitable and sustainable housing ecosystem that benefits all residents. Together, let's transform the housing landscape and build a brighter future for Toronto.


Why affordable housing:
WHY NOT! examining the disparity between housing prices in the United States and Canada, it's evident that affordability remains a pressing concern, with Canada often experiencing higher housing costs compared to its southern neighbor. This discrepancy underscores the critical importance of ensuring access to affordable housing, not just as an economic consideration but as a fundamental human need. While housing prices continue to rise, particularly in urban centers like Toronto, the issue of homelessness persists as a stark reminder of the challenges faced by many individuals and families. In Toronto alone, around 7,347 experience homelessness according to the 2021 report, which would have increased significantly by now. highlighting the urgency of addressing housing affordability and providing support for those in need.

Furthermore, the impact of housing on labor market efficiency cannot be understated. Affordable housing options play a crucial role in facilitating workforce mobility and productivity, allowing workers to live closer to their places of employment and reducing commute times. By addressing housing affordability and homelessness, cities like Toronto can enhance labor market efficiency, promote social equity, and fulfill the basic human need for safe and stable housing. Ultimately, a concerted effort to tackle these interconnected challenges is essential for building more inclusive and resilient communities where everyone has the opportunity to thrive.




Technologies:
IOS App
QML/QT (frontend and backend)
Legalities Policies GPT (LLM-python)
Partition generation (Machine Learning- Pytorch)
Contractor recommendation(Machine Learning- Python)
Database Management (PostgresSQL)

1. QML/QT (Frontend and Backend):
QML for frontend development to create visually appealing and responsive user interfaces, and leverage Qt for backend development to handle business logic and communication with the database.
Why:
Rapid development of cross-platform applications with rich GUIs.
Support for native look and feel on different platforms, including iOS.

2. Legalities Policies GPT (LLM-python):
Natural language processing (NLP) module using GPT (Generative Pre-trained Transformer) to provide users with information on legal issues and policies related to apartment ownership, rental agreements, building codes, etc.
Why:
Access to large pre-trained language models for generating accurate and relevant responses to user queries.
Ability to customize and fine-tune the model for specific legal domains and use cases.
Seamless integration with the application backend to provide real-time legal information to users.

3. Partition Generation (Machine Learning - PyTorch):
PyTorch to generate optimal partitions for apartment spaces based on user-defined parameters.
Why:
Flexibility to experiment with different machine learning algorithms and architectures for partition generation.
Ability to handle complex input parameters and optimize partition designs for space utilization and user preferences.
Integration with the application backend to provide partition recommendations to users in real-time.

4. Contractor Recommendation (Machine Learning - Python):
Machine learning model in Python to recommend contractors, suppliers, and builders based on user-selected partition designs and project requirements.
Why:
Utilization of historical project data and user feedback to train the recommendation model for accurate and personalized suggestions.
Integration with external APIs and databases to access contractor information and project details.
Ability to continuously improve and update the recommendation model based on user interactions and feedback.

5. Database Management (PostgreSQL):
PostgreSQL as the backend database management system to store and manage various data types, including blueprint images, user preferences, legal information, partition designs, contractor details, etc.
Why:
Robust relational database features for data modeling, querying, and transactions.
Scalability and performance optimizations for handling large volumes of data and concurrent user requests.
Integration with other technologies and frameworks through standardized SQL interfaces and drivers.

“””Welcome to our apartment optimization app! Upon launching the app, you'll be prompted to either use your device's camera to scan the blueprint of your apartment space or upload an existing blueprint image. If you prefer not to scan or upload at the moment, you can navigate directly to our Legalities and Policies section, where you can access comprehensive information on apartment-related legal matters. Once you've provided your blueprint or explored legal information, you'll move on to the Parameter Setup screen, where you can specify your needs and preferences for partition generation. These parameters are then used to generate three optimal partition designs through our trained machine learning model, tailored to your specifications. After selecting your preferred partition design, the app presents you with a curated list of contractors, suppliers, raw materials, and builders necessary for implementation. These recommendations are generated by another trained machine learning model, ensuring you receive the best solutions available. Throughout this process, all data is efficiently managed and stored in our database, ensuring seamless access and cleanliness. With our app, optimizing your apartment space has never been easier!”””



Market Analysis:
Housing Market in Toronto: Toronto faces a persistent housing crisis, indicating a high demand for innovative solutions. The market is diverse, with varying demographic needs across different neighborhoods.

Competitive Landscape: While there are other housing platforms and real estate services, our unique approach of demographic-driven design and optimization sets us apart, offering tailored solutions to residents' needs.

Revenue Streams:
Subscription Model: Offer subscription plans for users to access premium features, such as advanced partition generation options, contractor recommendations, and legal consultation.

Commission from Contractors: Generate revenue by charging a commission from recommended contractors and suppliers for each successful project lead or transaction facilitated through the app.

Advertising and Partnerships: Partner with relevant businesses, such as furniture retailers, interior design firms, or real estate agencies, to advertise their services within the app in exchange for a fee.

Cost Structure:
Development Costs: Initial investment in app development, including frontend and backend development, legalities and policies module integration, machine learning model development, and database management setup.

Operational Costs: Ongoing expenses such as server maintenance, database management, customer support, legal consultation for keeping policies up-to-date, and marketing.

Data Acquisition: Continuously acquiring and updating demographic data, legal information, and contractor databases to ensure accuracy and relevance.

ROI and Business Plan:
Projected Revenue: Based on market analysis, subscription model pricing, estimated commission rates from contractors, and potential advertising revenue, we forecast annual revenue projections.

Customer Acquisition Strategy: Implement targeted marketing campaigns to reach potential users, including students, professionals, and property owners, emphasizing the app's unique value proposition and benefits.

Scalability: As the app gains traction and user base grows, explore opportunities for expansion into other cities facing similar housing challenges, leveraging existing infrastructure and partnerships.

ROI Timeline: Estimate the timeline for recovering initial investment and achieving profitability, considering factors such as user adoption rate, subscription renewals, and revenue growth.

Sustainability: Continuously innovate and adapt to evolving market needs, incorporating user feedback, technological advancements, and regulatory changes to maintain competitiveness and long-term sustainability.

Example Scenario:
Let's consider a hypothetical scenario:

Initial Investment: $50,000 for app development, legal consultations, data acquisition, and initial marketing.
Projected Annual Revenue: $1,000,00 from subscription fees, commission from contractors, and advertising.
Operational Costs: $30,000 per year for server maintenance, database management, customer support, and marketing.
ROI Timeline: Expected to break even within 2 years of operation, with significant profitability thereafter.

Conclusion:
The apartment optimization app presents a promising opportunity to address Toronto's housing crisis while generating sustainable revenue streams through innovative technology, targeted services, and strategic partnerships. By aligning housing resources with demographic needs and leveraging machine learning and data science, the app not only offers a valuable solution to residents but also establishes a lucrative business model with substantial ROI potential.
