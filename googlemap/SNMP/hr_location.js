  loc_type_code character varying DEFAULT '10'::character varying,
  loc_type_name character varying DEFAULT 'Office'::character varying,
  incharge_id uuid,
  incharge_name character varying DEFAULT ''::character varying,
  incharge_desig character varying DEFAULT ''::character varying,
  incharge_mobile character varying DEFAULT ''::character varying,
  incharge_email character varying DEFAULT ''::character varying,
  state_code character varying DEFAULT 'BD'::character varying,
  state_name character varying DEFAULT 'Bangladesh'::character varying,
  div_code character varying DEFAULT '60'::character varying,
  div_name character varying DEFAULT 'Sylhet Division'::character varying,
  district_code character varying DEFAULT '91'::character varying,
  district_name character varying DEFAULT 'Sylhet'::character varying,
  subdistrict_code character varying DEFAULT '62'::character varying,
  subdistrict_name character varying DEFAULT 'Sylhet Sadar'::character varying,
  union_code character varying DEFAULT ''::character varying,
  union_name c



@Column(name = "loc_type_code")
private String locTypeCode;

@Column(name = "loc_type_name")
private String locTypeName;

@Column(name = "incharge_id")
private String inchargeId;

@Column(name = "incharge_name")
private String inchargeName;

@Column(name = "incharge_desig")
private String inchargeDesig;

@Column(name = "incharge_mobile")
private String inchargeMobile;

@Column(name = "incharge_email")
private String inchargeEmail;

@Column(name = "state_code")
private String stateCode;

@Column(name = "state_name")
private String stateName;

@Column(name = "div_code")
private String divCode;

@Column(name = "div_name")
private String divName;

@Column(name = "district_code")
private String districtCode;

@Column(name = "district_name")
private String districtName;

@Column(name = "subdistrict_code")
private String subdistrictCode;

@Column(name = "subdistrict_name")
private String subdistrictName;

@Column(name = "union_code")
private String unionCode;

@Column(name = "union_name")
private String unionName;


