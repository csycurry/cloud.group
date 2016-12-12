package com.csy.model;

import java.util.ArrayList;
import java.util.List;

public class BannerExample {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    protected String orderByClause;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    protected boolean distinct;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    protected List<Criteria> oredCriteria;

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public BannerExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public String getOrderByClause() {
        return orderByClause;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public boolean isDistinct() {
        return distinct;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("id is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("id is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Integer value) {
            addCriterion("id =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Integer value) {
            addCriterion("id <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Integer value) {
            addCriterion("id >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("id >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Integer value) {
            addCriterion("id <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Integer value) {
            addCriterion("id <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Integer> values) {
            addCriterion("id in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Integer> values) {
            addCriterion("id not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Integer value1, Integer value2) {
            addCriterion("id between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Integer value1, Integer value2) {
            addCriterion("id not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andBannerImgIsNull() {
            addCriterion("banner_img is null");
            return (Criteria) this;
        }

        public Criteria andBannerImgIsNotNull() {
            addCriterion("banner_img is not null");
            return (Criteria) this;
        }

        public Criteria andBannerImgEqualTo(String value) {
            addCriterion("banner_img =", value, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgNotEqualTo(String value) {
            addCriterion("banner_img <>", value, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgGreaterThan(String value) {
            addCriterion("banner_img >", value, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgGreaterThanOrEqualTo(String value) {
            addCriterion("banner_img >=", value, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgLessThan(String value) {
            addCriterion("banner_img <", value, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgLessThanOrEqualTo(String value) {
            addCriterion("banner_img <=", value, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgLike(String value) {
            addCriterion("banner_img like", value, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgNotLike(String value) {
            addCriterion("banner_img not like", value, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgIn(List<String> values) {
            addCriterion("banner_img in", values, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgNotIn(List<String> values) {
            addCriterion("banner_img not in", values, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgBetween(String value1, String value2) {
            addCriterion("banner_img between", value1, value2, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgNotBetween(String value1, String value2) {
            addCriterion("banner_img not between", value1, value2, "bannerImg");
            return (Criteria) this;
        }

        public Criteria andBannerImgrIsNull() {
            addCriterion("banner_imgR is null");
            return (Criteria) this;
        }

        public Criteria andBannerImgrIsNotNull() {
            addCriterion("banner_imgR is not null");
            return (Criteria) this;
        }

        public Criteria andBannerImgrEqualTo(String value) {
            addCriterion("banner_imgR =", value, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerImgrNotEqualTo(String value) {
            addCriterion("banner_imgR <>", value, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerImgrGreaterThan(String value) {
            addCriterion("banner_imgR >", value, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerImgrGreaterThanOrEqualTo(String value) {
            addCriterion("banner_imgR >=", value, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerImgrLessThan(String value) {
            addCriterion("banner_imgR <", value, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerImgrLessThanOrEqualTo(String value) {
            addCriterion("banner_imgR <=", value, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerImgrLike(String value) {
            addCriterion("banner_imgR like", value, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerImgrNotLike(String value) {
            addCriterion("banner_imgR not like", value, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerImgrIn(List<String> values) {
            addCriterion("banner_imgR in", values, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerImgrNotIn(List<String> values) {
            addCriterion("banner_imgR not in", values, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerImgrBetween(String value1, String value2) {
            addCriterion("banner_imgR between", value1, value2, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerImgrNotBetween(String value1, String value2) {
            addCriterion("banner_imgR not between", value1, value2, "bannerImgr");
            return (Criteria) this;
        }

        public Criteria andBannerUrlIsNull() {
            addCriterion("banner_url is null");
            return (Criteria) this;
        }

        public Criteria andBannerUrlIsNotNull() {
            addCriterion("banner_url is not null");
            return (Criteria) this;
        }

        public Criteria andBannerUrlEqualTo(String value) {
            addCriterion("banner_url =", value, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerUrlNotEqualTo(String value) {
            addCriterion("banner_url <>", value, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerUrlGreaterThan(String value) {
            addCriterion("banner_url >", value, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerUrlGreaterThanOrEqualTo(String value) {
            addCriterion("banner_url >=", value, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerUrlLessThan(String value) {
            addCriterion("banner_url <", value, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerUrlLessThanOrEqualTo(String value) {
            addCriterion("banner_url <=", value, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerUrlLike(String value) {
            addCriterion("banner_url like", value, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerUrlNotLike(String value) {
            addCriterion("banner_url not like", value, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerUrlIn(List<String> values) {
            addCriterion("banner_url in", values, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerUrlNotIn(List<String> values) {
            addCriterion("banner_url not in", values, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerUrlBetween(String value1, String value2) {
            addCriterion("banner_url between", value1, value2, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerUrlNotBetween(String value1, String value2) {
            addCriterion("banner_url not between", value1, value2, "bannerUrl");
            return (Criteria) this;
        }

        public Criteria andBannerDescIsNull() {
            addCriterion("banner_desc is null");
            return (Criteria) this;
        }

        public Criteria andBannerDescIsNotNull() {
            addCriterion("banner_desc is not null");
            return (Criteria) this;
        }

        public Criteria andBannerDescEqualTo(String value) {
            addCriterion("banner_desc =", value, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerDescNotEqualTo(String value) {
            addCriterion("banner_desc <>", value, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerDescGreaterThan(String value) {
            addCriterion("banner_desc >", value, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerDescGreaterThanOrEqualTo(String value) {
            addCriterion("banner_desc >=", value, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerDescLessThan(String value) {
            addCriterion("banner_desc <", value, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerDescLessThanOrEqualTo(String value) {
            addCriterion("banner_desc <=", value, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerDescLike(String value) {
            addCriterion("banner_desc like", value, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerDescNotLike(String value) {
            addCriterion("banner_desc not like", value, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerDescIn(List<String> values) {
            addCriterion("banner_desc in", values, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerDescNotIn(List<String> values) {
            addCriterion("banner_desc not in", values, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerDescBetween(String value1, String value2) {
            addCriterion("banner_desc between", value1, value2, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerDescNotBetween(String value1, String value2) {
            addCriterion("banner_desc not between", value1, value2, "bannerDesc");
            return (Criteria) this;
        }

        public Criteria andBannerOrderIsNull() {
            addCriterion("banner_order is null");
            return (Criteria) this;
        }

        public Criteria andBannerOrderIsNotNull() {
            addCriterion("banner_order is not null");
            return (Criteria) this;
        }

        public Criteria andBannerOrderEqualTo(Short value) {
            addCriterion("banner_order =", value, "bannerOrder");
            return (Criteria) this;
        }

        public Criteria andBannerOrderNotEqualTo(Short value) {
            addCriterion("banner_order <>", value, "bannerOrder");
            return (Criteria) this;
        }

        public Criteria andBannerOrderGreaterThan(Short value) {
            addCriterion("banner_order >", value, "bannerOrder");
            return (Criteria) this;
        }

        public Criteria andBannerOrderGreaterThanOrEqualTo(Short value) {
            addCriterion("banner_order >=", value, "bannerOrder");
            return (Criteria) this;
        }

        public Criteria andBannerOrderLessThan(Short value) {
            addCriterion("banner_order <", value, "bannerOrder");
            return (Criteria) this;
        }

        public Criteria andBannerOrderLessThanOrEqualTo(Short value) {
            addCriterion("banner_order <=", value, "bannerOrder");
            return (Criteria) this;
        }

        public Criteria andBannerOrderIn(List<Short> values) {
            addCriterion("banner_order in", values, "bannerOrder");
            return (Criteria) this;
        }

        public Criteria andBannerOrderNotIn(List<Short> values) {
            addCriterion("banner_order not in", values, "bannerOrder");
            return (Criteria) this;
        }

        public Criteria andBannerOrderBetween(Short value1, Short value2) {
            addCriterion("banner_order between", value1, value2, "bannerOrder");
            return (Criteria) this;
        }

        public Criteria andBannerOrderNotBetween(Short value1, Short value2) {
            addCriterion("banner_order not between", value1, value2, "bannerOrder");
            return (Criteria) this;
        }

        public Criteria andActiveIsNull() {
            addCriterion("active is null");
            return (Criteria) this;
        }

        public Criteria andActiveIsNotNull() {
            addCriterion("active is not null");
            return (Criteria) this;
        }

        public Criteria andActiveEqualTo(Boolean value) {
            addCriterion("active =", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveNotEqualTo(Boolean value) {
            addCriterion("active <>", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveGreaterThan(Boolean value) {
            addCriterion("active >", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveGreaterThanOrEqualTo(Boolean value) {
            addCriterion("active >=", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveLessThan(Boolean value) {
            addCriterion("active <", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveLessThanOrEqualTo(Boolean value) {
            addCriterion("active <=", value, "active");
            return (Criteria) this;
        }

        public Criteria andActiveIn(List<Boolean> values) {
            addCriterion("active in", values, "active");
            return (Criteria) this;
        }

        public Criteria andActiveNotIn(List<Boolean> values) {
            addCriterion("active not in", values, "active");
            return (Criteria) this;
        }

        public Criteria andActiveBetween(Boolean value1, Boolean value2) {
            addCriterion("active between", value1, value2, "active");
            return (Criteria) this;
        }

        public Criteria andActiveNotBetween(Boolean value1, Boolean value2) {
            addCriterion("active not between", value1, value2, "active");
            return (Criteria) this;
        }

        public Criteria andCityIdIsNull() {
            addCriterion("city_id is null");
            return (Criteria) this;
        }

        public Criteria andCityIdIsNotNull() {
            addCriterion("city_id is not null");
            return (Criteria) this;
        }

        public Criteria andCityIdEqualTo(Byte value) {
            addCriterion("city_id =", value, "cityId");
            return (Criteria) this;
        }

        public Criteria andCityIdNotEqualTo(Byte value) {
            addCriterion("city_id <>", value, "cityId");
            return (Criteria) this;
        }

        public Criteria andCityIdGreaterThan(Byte value) {
            addCriterion("city_id >", value, "cityId");
            return (Criteria) this;
        }

        public Criteria andCityIdGreaterThanOrEqualTo(Byte value) {
            addCriterion("city_id >=", value, "cityId");
            return (Criteria) this;
        }

        public Criteria andCityIdLessThan(Byte value) {
            addCriterion("city_id <", value, "cityId");
            return (Criteria) this;
        }

        public Criteria andCityIdLessThanOrEqualTo(Byte value) {
            addCriterion("city_id <=", value, "cityId");
            return (Criteria) this;
        }

        public Criteria andCityIdIn(List<Byte> values) {
            addCriterion("city_id in", values, "cityId");
            return (Criteria) this;
        }

        public Criteria andCityIdNotIn(List<Byte> values) {
            addCriterion("city_id not in", values, "cityId");
            return (Criteria) this;
        }

        public Criteria andCityIdBetween(Byte value1, Byte value2) {
            addCriterion("city_id between", value1, value2, "cityId");
            return (Criteria) this;
        }

        public Criteria andCityIdNotBetween(Byte value1, Byte value2) {
            addCriterion("city_id not between", value1, value2, "cityId");
            return (Criteria) this;
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table g_banner
     *
     * @mbg.generated do_not_delete_during_merge Sun Nov 27 01:44:02 CST 2016
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    /**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table g_banner
     *
     * @mbg.generated Sun Nov 27 01:44:02 CST 2016
     */
    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}