{-# LANGUAGE StrictData #-}
{-# LANGUAGE DataKinds #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# LANGUAGE TypeOperators #-}
{-# LANGUAGE NoImplicitPrelude #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE GeneralizedNewtypeDeriving #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-name-shadowing #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- |
-- Module      : Gogol.DoubleClickBids.Internal.Sum
-- Copyright   : (c) 2015-2022 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+gogol@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Gogol.DoubleClickBids.Internal.Sum
  (

    -- * Xgafv
    Xgafv
      (
        Xgafv_1,
        Xgafv_2,
        ..
      ),

    -- * FilterPair_Type
    FilterPair_Type
      (
        FilterPair_Type_FILTERUNKNOWN,
        FilterPair_Type_FILTERDATE,
        FilterPair_Type_FILTERDAYOFWEEK,
        FilterPair_Type_FILTERWEEK,
        FilterPair_Type_FILTERMONTH,
        FilterPair_Type_FILTERYEAR,
        FilterPair_Type_FILTERTIMEOFDAY,
        FilterPair_Type_FILTERCONVERSIONDELAY,
        FilterPair_Type_FILTERCREATIVEID,
        FilterPair_Type_FILTERCREATIVESIZE,
        FilterPair_Type_FILTERCREATIVETYPE,
        FilterPair_Type_FILTEREXCHANGEID,
        FilterPair_Type_FILTERADPOSITION,
        FilterPair_Type_FILTERPUBLICINVENTORY,
        FilterPair_Type_FILTERINVENTORYSOURCE,
        FilterPair_Type_FILTERCITY,
        FilterPair_Type_FILTERREGION,
        FilterPair_Type_FILTERDMA,
        FilterPair_Type_FILTERCOUNTRY,
        FilterPair_Type_FILTERSITEID,
        FilterPair_Type_FILTERCHANNELID,
        FilterPair_Type_FILTERPARTNER,
        FilterPair_Type_FILTERADVERTISER,
        FilterPair_Type_FILTERINSERTIONORDER,
        FilterPair_Type_FILTERLINEITEM,
        FilterPair_Type_FILTERPARTNERCURRENCY,
        FilterPair_Type_FILTERADVERTISERCURRENCY,
        FilterPair_Type_FILTERADVERTISERTIMEZONE,
        FilterPair_Type_FILTERLINEITEMTYPE,
        FilterPair_Type_FILTERUSERLIST,
        FilterPair_Type_FILTERUSERLISTFIRSTPARTY,
        FilterPair_Type_FILTERUSERLISTTHIRDPARTY,
        FilterPair_Type_FILTERTARGETEDUSERLIST,
        FilterPair_Type_FILTERDATAPROVIDER,
        FilterPair_Type_FILTERORDERID,
        FilterPair_Type_FILTERVIDEOPLAYERSIZE,
        FilterPair_Type_FILTERVIDEODURATIONSECONDS,
        FilterPair_Type_FILTERKEYWORD,
        FilterPair_Type_FILTERPAGECATEGORY,
        FilterPair_Type_FILTERCAMPAIGNDAILYFREQUENCY,
        FilterPair_Type_FILTERLINEITEMDAILYFREQUENCY,
        FilterPair_Type_FILTERLINEITEMLIFETIMEFREQUENCY,
        FilterPair_Type_FILTEROS,
        FilterPair_Type_FILTERBROWSER,
        FilterPair_Type_FILTERCARRIER,
        FilterPair_Type_FILTERSITELANGUAGE,
        FilterPair_Type_FILTERINVENTORYFORMAT,
        FilterPair_Type_FILTERZIPCODE,
        FilterPair_Type_FILTERVIDEORATINGTIER,
        FilterPair_Type_FILTERVIDEOFORMATSUPPORT,
        FilterPair_Type_FILTERVIDEOSKIPPABLESUPPORT,
        FilterPair_Type_FILTERVIDEOCREATIVEDURATION,
        FilterPair_Type_FILTERPAGELAYOUT,
        FilterPair_Type_FILTERVIDEOADPOSITIONINSTREAM,
        FilterPair_Type_FILTERAGE,
        FilterPair_Type_FILTERGENDER,
        FilterPair_Type_FILTERQUARTER,
        FilterPair_Type_FILTERTRUEVIEWCONVERSIONTYPE,
        FilterPair_Type_FILTERMOBILEGEO,
        FilterPair_Type_FILTERMRAIDSUPPORT,
        FilterPair_Type_FILTERACTIVEVIEWEXPECTEDVIEWABILITY,
        FilterPair_Type_FILTERVIDEOCREATIVEDURATIONSKIPPABLE,
        FilterPair_Type_FILTERNIELSENCOUNTRYCODE,
        FilterPair_Type_FILTERNIELSENDEVICEID,
        FilterPair_Type_FILTERNIELSENGENDER,
        FilterPair_Type_FILTERNIELSENAGE,
        FilterPair_Type_FILTERINVENTORYSOURCETYPE,
        FilterPair_Type_FILTERCREATIVEWIDTH,
        FilterPair_Type_FILTERCREATIVEHEIGHT,
        FilterPair_Type_FILTERDFPORDERID,
        FilterPair_Type_FILTERTRUEVIEWAGE,
        FilterPair_Type_FILTERTRUEVIEWGENDER,
        FilterPair_Type_FILTERTRUEVIEWPARENTALSTATUS,
        FilterPair_Type_FILTERTRUEVIEWREMARKETINGLIST,
        FilterPair_Type_FILTERTRUEVIEWINTEREST,
        FilterPair_Type_FILTERTRUEVIEWADGROUPID,
        FilterPair_Type_FILTERTRUEVIEWADGROUPADID,
        FilterPair_Type_FILTERTRUEVIEWIARLANGUAGE,
        FilterPair_Type_FILTERTRUEVIEWIARGENDER,
        FilterPair_Type_FILTERTRUEVIEWIARAGE,
        FilterPair_Type_FILTERTRUEVIEWIARCATEGORY,
        FilterPair_Type_FILTERTRUEVIEWIARCOUNTRY,
        FilterPair_Type_FILTERTRUEVIEWIARCITY,
        FilterPair_Type_FILTERTRUEVIEWIARREGION,
        FilterPair_Type_FILTERTRUEVIEWIARZIPCODE,
        FilterPair_Type_FILTERTRUEVIEWIARREMARKETINGLIST,
        FilterPair_Type_FILTERTRUEVIEWIARINTEREST,
        FilterPair_Type_FILTERTRUEVIEWIARPARENTALSTATUS,
        FilterPair_Type_FILTERTRUEVIEWIARTIMEOFDAY,
        FilterPair_Type_FILTERTRUEVIEWCUSTOMAFFINITY,
        FilterPair_Type_FILTERTRUEVIEWCATEGORY,
        FilterPair_Type_FILTERTRUEVIEWKEYWORD,
        FilterPair_Type_FILTERTRUEVIEWPLACEMENT,
        FilterPair_Type_FILTERTRUEVIEWURL,
        FilterPair_Type_FILTERTRUEVIEWCOUNTRY,
        FilterPair_Type_FILTERTRUEVIEWREGION,
        FilterPair_Type_FILTERTRUEVIEWCITY,
        FilterPair_Type_FILTERTRUEVIEWDMA,
        FilterPair_Type_FILTERTRUEVIEWZIPCODE,
        FilterPair_Type_FILTERNOTSUPPORTED,
        FilterPair_Type_FILTERMEDIAPLAN,
        FilterPair_Type_FILTERTRUEVIEWIARYOUTUBECHANNEL,
        FilterPair_Type_FILTERTRUEVIEWIARYOUTUBEVIDEO,
        FilterPair_Type_FILTERSKIPPABLESUPPORT,
        FilterPair_Type_FILTERCOMPANIONCREATIVEID,
        FilterPair_Type_FILTERBUDGETSEGMENTDESCRIPTION,
        FilterPair_Type_FILTERFLOODLIGHTACTIVITYID,
        FilterPair_Type_FILTERDEVICEMODEL,
        FilterPair_Type_FILTERDEVICEMAKE,
        FilterPair_Type_FILTERDEVICETYPE,
        FilterPair_Type_FILTERCREATIVEATTRIBUTE,
        FilterPair_Type_FILTERINVENTORYCOMMITMENTTYPE,
        FilterPair_Type_FILTERINVENTORYRATETYPE,
        FilterPair_Type_FILTERINVENTORYDELIVERYMETHOD,
        FilterPair_Type_FILTERINVENTORYSOURCEEXTERNALID,
        FilterPair_Type_FILTERAUTHORIZEDSELLERSTATE,
        FilterPair_Type_FILTERVIDEODURATIONSECONDSRANGE,
        FilterPair_Type_FILTERPARTNERNAME,
        FilterPair_Type_FILTERPARTNERSTATUS,
        FilterPair_Type_FILTERADVERTISERNAME,
        FilterPair_Type_FILTERADVERTISERINTEGRATIONCODE,
        FilterPair_Type_FILTERADVERTISERINTEGRATIONSTATUS,
        FilterPair_Type_FILTERCARRIERNAME,
        FilterPair_Type_FILTERCHANNELNAME,
        FilterPair_Type_FILTERCITYNAME,
        FilterPair_Type_FILTERCOMPANIONCREATIVENAME,
        FilterPair_Type_FILTERUSERLISTFIRSTPARTYNAME,
        FilterPair_Type_FILTERUSERLISTTHIRDPARTYNAME,
        FilterPair_Type_FILTERNIELSENRESTATEMENTDATE,
        FilterPair_Type_FILTERNIELSENDATERANGE,
        FilterPair_Type_FILTERINSERTIONORDERNAME,
        FilterPair_Type_FILTERREGIONNAME,
        FilterPair_Type_FILTERDMANAME,
        FilterPair_Type_FILTERTRUEVIEWIARREGIONNAME,
        FilterPair_Type_FILTERTRUEVIEWDMANAME,
        FilterPair_Type_FILTERTRUEVIEWREGIONNAME,
        FilterPair_Type_FILTERACTIVEVIEWCUSTOMMETRICID,
        FilterPair_Type_FILTERACTIVEVIEWCUSTOMMETRICNAME,
        FilterPair_Type_FILTERADTYPE,
        FilterPair_Type_FILTERALGORITHM,
        FilterPair_Type_FILTERALGORITHMID,
        FilterPair_Type_FILTERAMPPAGEREQUEST,
        FilterPair_Type_FILTERANONYMOUSINVENTORYMODELING,
        FilterPair_Type_FILTERAPPURL,
        FilterPair_Type_FILTERAPPURLEXCLUDED,
        FilterPair_Type_FILTERATTRIBUTEDUSERLIST,
        FilterPair_Type_FILTERATTRIBUTEDUSERLISTCOST,
        FilterPair_Type_FILTERATTRIBUTEDUSERLISTTYPE,
        FilterPair_Type_FILTERATTRIBUTIONMODEL,
        FilterPair_Type_FILTERAUDIENCELIST,
        FilterPair_Type_FILTERAUDIENCELISTCOST,
        FilterPair_Type_FILTERAUDIENCELISTTYPE,
        FilterPair_Type_FILTERAUDIENCENAME,
        FilterPair_Type_FILTERAUDIENCETYPE,
        FilterPair_Type_FILTERBILLABLEOUTCOME,
        FilterPair_Type_FILTERBRANDLIFTTYPE,
        FilterPair_Type_FILTERCHANNELTYPE,
        FilterPair_Type_FILTERCMPLACEMENTID,
        FilterPair_Type_FILTERCONVERSIONSOURCE,
        FilterPair_Type_FILTERCONVERSIONSOURCEID,
        FilterPair_Type_FILTERCOUNTRYID,
        FilterPair_Type_FILTERCREATIVE,
        FilterPair_Type_FILTERCREATIVEASSET,
        FilterPair_Type_FILTERCREATIVEINTEGRATIONCODE,
        FilterPair_Type_FILTERCREATIVERENDEREDINAMP,
        FilterPair_Type_FILTERCREATIVESOURCE,
        FilterPair_Type_FILTERCREATIVESTATUS,
        FilterPair_Type_FILTERDATAPROVIDERNAME,
        FilterPair_Type_FILTERDETAILEDDEMOGRAPHICS,
        FilterPair_Type_FILTERDETAILEDDEMOGRAPHICSID,
        FilterPair_Type_FILTERDEVICE,
        FilterPair_Type_FILTERGAMINSERTIONORDER,
        FilterPair_Type_FILTERGAMLINEITEM,
        FilterPair_Type_FILTERGAMLINEITEMID,
        FilterPair_Type_FILTERDIGITALCONTENTLABEL,
        FilterPair_Type_FILTERDOMAIN,
        FilterPair_Type_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST,
        FilterPair_Type_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST,
        FilterPair_Type_FILTEREXCHANGE,
        FilterPair_Type_FILTEREXCHANGECODE,
        FilterPair_Type_FILTEREXTENSION,
        FilterPair_Type_FILTEREXTENSIONSTATUS,
        FilterPair_Type_FILTEREXTENSIONTYPE,
        FilterPair_Type_FILTERFIRSTPARTYAUDIENCELISTCOST,
        FilterPair_Type_FILTERFIRSTPARTYAUDIENCELISTTYPE,
        FilterPair_Type_FILTERFLOODLIGHTACTIVITY,
        FilterPair_Type_FILTERFORMAT,
        FilterPair_Type_FILTERGMAILAGE,
        FilterPair_Type_FILTERGMAILCITY,
        FilterPair_Type_FILTERGMAILCOUNTRY,
        FilterPair_Type_FILTERGMAILCOUNTRYNAME,
        FilterPair_Type_FILTERGMAILDEVICETYPE,
        FilterPair_Type_FILTERGMAILDEVICETYPENAME,
        FilterPair_Type_FILTERGMAILGENDER,
        FilterPair_Type_FILTERGMAILREGION,
        FilterPair_Type_FILTERGMAILREMARKETINGLIST,
        FilterPair_Type_FILTERHOUSEHOLDINCOME,
        FilterPair_Type_FILTERIMPRESSIONCOUNTINGMETHOD,
        FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER,
        FilterPair_Type_FILTERINSERTIONORDERINTEGRATIONCODE,
        FilterPair_Type_FILTERINSERTIONORDERSTATUS,
        FilterPair_Type_FILTERINTEREST,
        FilterPair_Type_FILTERINVENTORYSOURCEGROUP,
        FilterPair_Type_FILTERINVENTORYSOURCEGROUPID,
        FilterPair_Type_FILTERINVENTORYSOURCEID,
        FilterPair_Type_FILTERINVENTORYSOURCENAME,
        FilterPair_Type_FILTERLIFEEVENT,
        FilterPair_Type_FILTERLIFEEVENTS,
        FilterPair_Type_FILTERLINEITEMINTEGRATIONCODE,
        FilterPair_Type_FILTERLINEITEMNAME,
        FilterPair_Type_FILTERLINEITEMSTATUS,
        FilterPair_Type_FILTERMATCHRATIO,
        FilterPair_Type_FILTERMEASUREMENTSOURCE,
        FilterPair_Type_FILTERMEDIAPLANNAME,
        FilterPair_Type_FILTERPARENTALSTATUS,
        FilterPair_Type_FILTERPLACEMENTALLYOUTUBECHANNELS,
        FilterPair_Type_FILTERPLATFORM,
        FilterPair_Type_FILTERPLAYBACKMETHOD,
        FilterPair_Type_FILTERPOSITIONINCONTENT,
        FilterPair_Type_FILTERPUBLISHERPROPERTY,
        FilterPair_Type_FILTERPUBLISHERPROPERTYID,
        FilterPair_Type_FILTERPUBLISHERPROPERTYSECTION,
        FilterPair_Type_FILTERPUBLISHERPROPERTYSECTIONID,
        FilterPair_Type_FILTERREFUNDREASON,
        FilterPair_Type_FILTERREMARKETINGLIST,
        FilterPair_Type_FILTERREWARDED,
        FilterPair_Type_FILTERSENSITIVECATEGORY,
        FilterPair_Type_FILTERSERVEDPIXELDENSITY,
        FilterPair_Type_FILTERTARGETEDDATAPROVIDERS,
        FilterPair_Type_FILTERTHIRDPARTYAUDIENCELISTCOST,
        FilterPair_Type_FILTERTHIRDPARTYAUDIENCELISTTYPE,
        FilterPair_Type_FILTERTRUEVIEWAD,
        FilterPair_Type_FILTERTRUEVIEWADGROUP,
        FilterPair_Type_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS,
        FilterPair_Type_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID,
        FilterPair_Type_FILTERTRUEVIEWHOUSEHOLDINCOME,
        FilterPair_Type_FILTERTRUEVIEWIARCOUNTRYNAME,
        FilterPair_Type_FILTERTRUEVIEWREMARKETINGLISTNAME,
        FilterPair_Type_FILTERVARIANTID,
        FilterPair_Type_FILTERVARIANTNAME,
        FilterPair_Type_FILTERVARIANTVERSION,
        FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZE,
        FilterPair_Type_FILTERVERIFICATIONVIDEOPOSITION,
        FilterPair_Type_FILTERVIDEOCOMPANIONCREATIVESIZE,
        FilterPair_Type_FILTERVIDEOCONTINUOUSPLAY,
        FilterPair_Type_FILTERVIDEODURATION,
        FilterPair_Type_FILTERYOUTUBEADAPTEDAUDIENCELIST,
        FilterPair_Type_FILTERYOUTUBEADVIDEO,
        FilterPair_Type_FILTERYOUTUBEADVIDEOID,
        FilterPair_Type_FILTERYOUTUBECHANNEL,
        FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER,
        FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER,
        FilterPair_Type_FILTERYOUTUBEVIDEO,
        FilterPair_Type_FILTERZIPPOSTALCODE,
        FilterPair_Type_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS,
        FilterPair_Type_FILTERTRUEVIEWPLACEMENTID,
        FilterPair_Type_FILTERPATHPATTERNID,
        FilterPair_Type_FILTERPATHEVENTINDEX,
        FilterPair_Type_FILTEREVENTTYPE,
        FilterPair_Type_FILTERCHANNELGROUPING,
        FilterPair_Type_FILTEROMSDKAVAILABLE,
        FilterPair_Type_FILTERDATASOURCE,
        FilterPair_Type_FILTERCM360PLACEMENTID,
        FilterPair_Type_FILTERTRUEVIEWCLICKTYPENAME,
        FilterPair_Type_FILTERTRUEVIEWADTYPENAME,
        FilterPair_Type_FILTERVIDEOCONTENTDURATION,
        FilterPair_Type_FILTERMATCHEDGENRETARGET,
        FilterPair_Type_FILTERVIDEOCONTENTLIVESTREAM,
        FilterPair_Type_FILTERBUDGETSEGMENTTYPE,
        FilterPair_Type_FILTERBUDGETSEGMENTBUDGET,
        FilterPair_Type_FILTERBUDGETSEGMENTSTARTDATE,
        FilterPair_Type_FILTERBUDGETSEGMENTENDDATE,
        FilterPair_Type_FILTERBUDGETSEGMENTPACINGPERCENTAGE,
        FilterPair_Type_FILTERLINEITEMBUDGET,
        FilterPair_Type_FILTERLINEITEMSTARTDATE,
        FilterPair_Type_FILTERLINEITEMENDDATE,
        FilterPair_Type_FILTERINSERTIONORDERGOALTYPE,
        FilterPair_Type_FILTERLINEITEMPACINGPERCENTAGE,
        FilterPair_Type_FILTERINSERTIONORDERGOALVALUE,
        FilterPair_Type_FILTEROMIDCAPABLE,
        FilterPair_Type_FILTERVENDORMEASUREMENTMODE,
        FilterPair_Type_FILTERIMPRESSIONLOSSREJECTIONREASON,
        FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZESTART,
        FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE,
        FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT,
        FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE,
        FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE,
        FilterPair_Type_FILTERVERIFICATIONVIDEORESIZED,
        FilterPair_Type_FILTERVERIFICATIONAUDIBILITYSTART,
        FilterPair_Type_FILTERVERIFICATIONAUDIBILITYCOMPLETE,
        FilterPair_Type_FILTERMEDIATYPE,
        FilterPair_Type_FILTERAUDIOFEEDTYPENAME,
        ..
      ),

    -- * Parameters_GroupBysItem
    Parameters_GroupBysItem
      (
        Parameters_GroupBysItem_FILTERUNKNOWN,
        Parameters_GroupBysItem_FILTERDATE,
        Parameters_GroupBysItem_FILTERDAYOFWEEK,
        Parameters_GroupBysItem_FILTERWEEK,
        Parameters_GroupBysItem_FILTERMONTH,
        Parameters_GroupBysItem_FILTERYEAR,
        Parameters_GroupBysItem_FILTERTIMEOFDAY,
        Parameters_GroupBysItem_FILTERCONVERSIONDELAY,
        Parameters_GroupBysItem_FILTERCREATIVEID,
        Parameters_GroupBysItem_FILTERCREATIVESIZE,
        Parameters_GroupBysItem_FILTERCREATIVETYPE,
        Parameters_GroupBysItem_FILTEREXCHANGEID,
        Parameters_GroupBysItem_FILTERADPOSITION,
        Parameters_GroupBysItem_FILTERPUBLICINVENTORY,
        Parameters_GroupBysItem_FILTERINVENTORYSOURCE,
        Parameters_GroupBysItem_FILTERCITY,
        Parameters_GroupBysItem_FILTERREGION,
        Parameters_GroupBysItem_FILTERDMA,
        Parameters_GroupBysItem_FILTERCOUNTRY,
        Parameters_GroupBysItem_FILTERSITEID,
        Parameters_GroupBysItem_FILTERCHANNELID,
        Parameters_GroupBysItem_FILTERPARTNER,
        Parameters_GroupBysItem_FILTERADVERTISER,
        Parameters_GroupBysItem_FILTERINSERTIONORDER,
        Parameters_GroupBysItem_FILTERLINEITEM,
        Parameters_GroupBysItem_FILTERPARTNERCURRENCY,
        Parameters_GroupBysItem_FILTERADVERTISERCURRENCY,
        Parameters_GroupBysItem_FILTERADVERTISERTIMEZONE,
        Parameters_GroupBysItem_FILTERLINEITEMTYPE,
        Parameters_GroupBysItem_FILTERUSERLIST,
        Parameters_GroupBysItem_FILTERUSERLISTFIRSTPARTY,
        Parameters_GroupBysItem_FILTERUSERLISTTHIRDPARTY,
        Parameters_GroupBysItem_FILTERTARGETEDUSERLIST,
        Parameters_GroupBysItem_FILTERDATAPROVIDER,
        Parameters_GroupBysItem_FILTERORDERID,
        Parameters_GroupBysItem_FILTERVIDEOPLAYERSIZE,
        Parameters_GroupBysItem_FILTERVIDEODURATIONSECONDS,
        Parameters_GroupBysItem_FILTERKEYWORD,
        Parameters_GroupBysItem_FILTERPAGECATEGORY,
        Parameters_GroupBysItem_FILTERCAMPAIGNDAILYFREQUENCY,
        Parameters_GroupBysItem_FILTERLINEITEMDAILYFREQUENCY,
        Parameters_GroupBysItem_FILTERLINEITEMLIFETIMEFREQUENCY,
        Parameters_GroupBysItem_FILTEROS,
        Parameters_GroupBysItem_FILTERBROWSER,
        Parameters_GroupBysItem_FILTERCARRIER,
        Parameters_GroupBysItem_FILTERSITELANGUAGE,
        Parameters_GroupBysItem_FILTERINVENTORYFORMAT,
        Parameters_GroupBysItem_FILTERZIPCODE,
        Parameters_GroupBysItem_FILTERVIDEORATINGTIER,
        Parameters_GroupBysItem_FILTERVIDEOFORMATSUPPORT,
        Parameters_GroupBysItem_FILTERVIDEOSKIPPABLESUPPORT,
        Parameters_GroupBysItem_FILTERVIDEOCREATIVEDURATION,
        Parameters_GroupBysItem_FILTERPAGELAYOUT,
        Parameters_GroupBysItem_FILTERVIDEOADPOSITIONINSTREAM,
        Parameters_GroupBysItem_FILTERAGE,
        Parameters_GroupBysItem_FILTERGENDER,
        Parameters_GroupBysItem_FILTERQUARTER,
        Parameters_GroupBysItem_FILTERTRUEVIEWCONVERSIONTYPE,
        Parameters_GroupBysItem_FILTERMOBILEGEO,
        Parameters_GroupBysItem_FILTERMRAIDSUPPORT,
        Parameters_GroupBysItem_FILTERACTIVEVIEWEXPECTEDVIEWABILITY,
        Parameters_GroupBysItem_FILTERVIDEOCREATIVEDURATIONSKIPPABLE,
        Parameters_GroupBysItem_FILTERNIELSENCOUNTRYCODE,
        Parameters_GroupBysItem_FILTERNIELSENDEVICEID,
        Parameters_GroupBysItem_FILTERNIELSENGENDER,
        Parameters_GroupBysItem_FILTERNIELSENAGE,
        Parameters_GroupBysItem_FILTERINVENTORYSOURCETYPE,
        Parameters_GroupBysItem_FILTERCREATIVEWIDTH,
        Parameters_GroupBysItem_FILTERCREATIVEHEIGHT,
        Parameters_GroupBysItem_FILTERDFPORDERID,
        Parameters_GroupBysItem_FILTERTRUEVIEWAGE,
        Parameters_GroupBysItem_FILTERTRUEVIEWGENDER,
        Parameters_GroupBysItem_FILTERTRUEVIEWPARENTALSTATUS,
        Parameters_GroupBysItem_FILTERTRUEVIEWREMARKETINGLIST,
        Parameters_GroupBysItem_FILTERTRUEVIEWINTEREST,
        Parameters_GroupBysItem_FILTERTRUEVIEWADGROUPID,
        Parameters_GroupBysItem_FILTERTRUEVIEWADGROUPADID,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARLANGUAGE,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARGENDER,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARAGE,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARCATEGORY,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARCOUNTRY,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARCITY,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARREGION,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARZIPCODE,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARREMARKETINGLIST,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARINTEREST,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARPARENTALSTATUS,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARTIMEOFDAY,
        Parameters_GroupBysItem_FILTERTRUEVIEWCUSTOMAFFINITY,
        Parameters_GroupBysItem_FILTERTRUEVIEWCATEGORY,
        Parameters_GroupBysItem_FILTERTRUEVIEWKEYWORD,
        Parameters_GroupBysItem_FILTERTRUEVIEWPLACEMENT,
        Parameters_GroupBysItem_FILTERTRUEVIEWURL,
        Parameters_GroupBysItem_FILTERTRUEVIEWCOUNTRY,
        Parameters_GroupBysItem_FILTERTRUEVIEWREGION,
        Parameters_GroupBysItem_FILTERTRUEVIEWCITY,
        Parameters_GroupBysItem_FILTERTRUEVIEWDMA,
        Parameters_GroupBysItem_FILTERTRUEVIEWZIPCODE,
        Parameters_GroupBysItem_FILTERNOTSUPPORTED,
        Parameters_GroupBysItem_FILTERMEDIAPLAN,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARYOUTUBECHANNEL,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARYOUTUBEVIDEO,
        Parameters_GroupBysItem_FILTERSKIPPABLESUPPORT,
        Parameters_GroupBysItem_FILTERCOMPANIONCREATIVEID,
        Parameters_GroupBysItem_FILTERBUDGETSEGMENTDESCRIPTION,
        Parameters_GroupBysItem_FILTERFLOODLIGHTACTIVITYID,
        Parameters_GroupBysItem_FILTERDEVICEMODEL,
        Parameters_GroupBysItem_FILTERDEVICEMAKE,
        Parameters_GroupBysItem_FILTERDEVICETYPE,
        Parameters_GroupBysItem_FILTERCREATIVEATTRIBUTE,
        Parameters_GroupBysItem_FILTERINVENTORYCOMMITMENTTYPE,
        Parameters_GroupBysItem_FILTERINVENTORYRATETYPE,
        Parameters_GroupBysItem_FILTERINVENTORYDELIVERYMETHOD,
        Parameters_GroupBysItem_FILTERINVENTORYSOURCEEXTERNALID,
        Parameters_GroupBysItem_FILTERAUTHORIZEDSELLERSTATE,
        Parameters_GroupBysItem_FILTERVIDEODURATIONSECONDSRANGE,
        Parameters_GroupBysItem_FILTERPARTNERNAME,
        Parameters_GroupBysItem_FILTERPARTNERSTATUS,
        Parameters_GroupBysItem_FILTERADVERTISERNAME,
        Parameters_GroupBysItem_FILTERADVERTISERINTEGRATIONCODE,
        Parameters_GroupBysItem_FILTERADVERTISERINTEGRATIONSTATUS,
        Parameters_GroupBysItem_FILTERCARRIERNAME,
        Parameters_GroupBysItem_FILTERCHANNELNAME,
        Parameters_GroupBysItem_FILTERCITYNAME,
        Parameters_GroupBysItem_FILTERCOMPANIONCREATIVENAME,
        Parameters_GroupBysItem_FILTERUSERLISTFIRSTPARTYNAME,
        Parameters_GroupBysItem_FILTERUSERLISTTHIRDPARTYNAME,
        Parameters_GroupBysItem_FILTERNIELSENRESTATEMENTDATE,
        Parameters_GroupBysItem_FILTERNIELSENDATERANGE,
        Parameters_GroupBysItem_FILTERINSERTIONORDERNAME,
        Parameters_GroupBysItem_FILTERREGIONNAME,
        Parameters_GroupBysItem_FILTERDMANAME,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARREGIONNAME,
        Parameters_GroupBysItem_FILTERTRUEVIEWDMANAME,
        Parameters_GroupBysItem_FILTERTRUEVIEWREGIONNAME,
        Parameters_GroupBysItem_FILTERACTIVEVIEWCUSTOMMETRICID,
        Parameters_GroupBysItem_FILTERACTIVEVIEWCUSTOMMETRICNAME,
        Parameters_GroupBysItem_FILTERADTYPE,
        Parameters_GroupBysItem_FILTERALGORITHM,
        Parameters_GroupBysItem_FILTERALGORITHMID,
        Parameters_GroupBysItem_FILTERAMPPAGEREQUEST,
        Parameters_GroupBysItem_FILTERANONYMOUSINVENTORYMODELING,
        Parameters_GroupBysItem_FILTERAPPURL,
        Parameters_GroupBysItem_FILTERAPPURLEXCLUDED,
        Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLIST,
        Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLISTCOST,
        Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLISTTYPE,
        Parameters_GroupBysItem_FILTERATTRIBUTIONMODEL,
        Parameters_GroupBysItem_FILTERAUDIENCELIST,
        Parameters_GroupBysItem_FILTERAUDIENCELISTCOST,
        Parameters_GroupBysItem_FILTERAUDIENCELISTTYPE,
        Parameters_GroupBysItem_FILTERAUDIENCENAME,
        Parameters_GroupBysItem_FILTERAUDIENCETYPE,
        Parameters_GroupBysItem_FILTERBILLABLEOUTCOME,
        Parameters_GroupBysItem_FILTERBRANDLIFTTYPE,
        Parameters_GroupBysItem_FILTERCHANNELTYPE,
        Parameters_GroupBysItem_FILTERCMPLACEMENTID,
        Parameters_GroupBysItem_FILTERCONVERSIONSOURCE,
        Parameters_GroupBysItem_FILTERCONVERSIONSOURCEID,
        Parameters_GroupBysItem_FILTERCOUNTRYID,
        Parameters_GroupBysItem_FILTERCREATIVE,
        Parameters_GroupBysItem_FILTERCREATIVEASSET,
        Parameters_GroupBysItem_FILTERCREATIVEINTEGRATIONCODE,
        Parameters_GroupBysItem_FILTERCREATIVERENDEREDINAMP,
        Parameters_GroupBysItem_FILTERCREATIVESOURCE,
        Parameters_GroupBysItem_FILTERCREATIVESTATUS,
        Parameters_GroupBysItem_FILTERDATAPROVIDERNAME,
        Parameters_GroupBysItem_FILTERDETAILEDDEMOGRAPHICS,
        Parameters_GroupBysItem_FILTERDETAILEDDEMOGRAPHICSID,
        Parameters_GroupBysItem_FILTERDEVICE,
        Parameters_GroupBysItem_FILTERGAMINSERTIONORDER,
        Parameters_GroupBysItem_FILTERGAMLINEITEM,
        Parameters_GroupBysItem_FILTERGAMLINEITEMID,
        Parameters_GroupBysItem_FILTERDIGITALCONTENTLABEL,
        Parameters_GroupBysItem_FILTERDOMAIN,
        Parameters_GroupBysItem_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST,
        Parameters_GroupBysItem_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST,
        Parameters_GroupBysItem_FILTEREXCHANGE,
        Parameters_GroupBysItem_FILTEREXCHANGECODE,
        Parameters_GroupBysItem_FILTEREXTENSION,
        Parameters_GroupBysItem_FILTEREXTENSIONSTATUS,
        Parameters_GroupBysItem_FILTEREXTENSIONTYPE,
        Parameters_GroupBysItem_FILTERFIRSTPARTYAUDIENCELISTCOST,
        Parameters_GroupBysItem_FILTERFIRSTPARTYAUDIENCELISTTYPE,
        Parameters_GroupBysItem_FILTERFLOODLIGHTACTIVITY,
        Parameters_GroupBysItem_FILTERFORMAT,
        Parameters_GroupBysItem_FILTERGMAILAGE,
        Parameters_GroupBysItem_FILTERGMAILCITY,
        Parameters_GroupBysItem_FILTERGMAILCOUNTRY,
        Parameters_GroupBysItem_FILTERGMAILCOUNTRYNAME,
        Parameters_GroupBysItem_FILTERGMAILDEVICETYPE,
        Parameters_GroupBysItem_FILTERGMAILDEVICETYPENAME,
        Parameters_GroupBysItem_FILTERGMAILGENDER,
        Parameters_GroupBysItem_FILTERGMAILREGION,
        Parameters_GroupBysItem_FILTERGMAILREMARKETINGLIST,
        Parameters_GroupBysItem_FILTERHOUSEHOLDINCOME,
        Parameters_GroupBysItem_FILTERIMPRESSIONCOUNTINGMETHOD,
        Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER,
        Parameters_GroupBysItem_FILTERINSERTIONORDERINTEGRATIONCODE,
        Parameters_GroupBysItem_FILTERINSERTIONORDERSTATUS,
        Parameters_GroupBysItem_FILTERINTEREST,
        Parameters_GroupBysItem_FILTERINVENTORYSOURCEGROUP,
        Parameters_GroupBysItem_FILTERINVENTORYSOURCEGROUPID,
        Parameters_GroupBysItem_FILTERINVENTORYSOURCEID,
        Parameters_GroupBysItem_FILTERINVENTORYSOURCENAME,
        Parameters_GroupBysItem_FILTERLIFEEVENT,
        Parameters_GroupBysItem_FILTERLIFEEVENTS,
        Parameters_GroupBysItem_FILTERLINEITEMINTEGRATIONCODE,
        Parameters_GroupBysItem_FILTERLINEITEMNAME,
        Parameters_GroupBysItem_FILTERLINEITEMSTATUS,
        Parameters_GroupBysItem_FILTERMATCHRATIO,
        Parameters_GroupBysItem_FILTERMEASUREMENTSOURCE,
        Parameters_GroupBysItem_FILTERMEDIAPLANNAME,
        Parameters_GroupBysItem_FILTERPARENTALSTATUS,
        Parameters_GroupBysItem_FILTERPLACEMENTALLYOUTUBECHANNELS,
        Parameters_GroupBysItem_FILTERPLATFORM,
        Parameters_GroupBysItem_FILTERPLAYBACKMETHOD,
        Parameters_GroupBysItem_FILTERPOSITIONINCONTENT,
        Parameters_GroupBysItem_FILTERPUBLISHERPROPERTY,
        Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYID,
        Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYSECTION,
        Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYSECTIONID,
        Parameters_GroupBysItem_FILTERREFUNDREASON,
        Parameters_GroupBysItem_FILTERREMARKETINGLIST,
        Parameters_GroupBysItem_FILTERREWARDED,
        Parameters_GroupBysItem_FILTERSENSITIVECATEGORY,
        Parameters_GroupBysItem_FILTERSERVEDPIXELDENSITY,
        Parameters_GroupBysItem_FILTERTARGETEDDATAPROVIDERS,
        Parameters_GroupBysItem_FILTERTHIRDPARTYAUDIENCELISTCOST,
        Parameters_GroupBysItem_FILTERTHIRDPARTYAUDIENCELISTTYPE,
        Parameters_GroupBysItem_FILTERTRUEVIEWAD,
        Parameters_GroupBysItem_FILTERTRUEVIEWADGROUP,
        Parameters_GroupBysItem_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS,
        Parameters_GroupBysItem_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID,
        Parameters_GroupBysItem_FILTERTRUEVIEWHOUSEHOLDINCOME,
        Parameters_GroupBysItem_FILTERTRUEVIEWIARCOUNTRYNAME,
        Parameters_GroupBysItem_FILTERTRUEVIEWREMARKETINGLISTNAME,
        Parameters_GroupBysItem_FILTERVARIANTID,
        Parameters_GroupBysItem_FILTERVARIANTNAME,
        Parameters_GroupBysItem_FILTERVARIANTVERSION,
        Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZE,
        Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPOSITION,
        Parameters_GroupBysItem_FILTERVIDEOCOMPANIONCREATIVESIZE,
        Parameters_GroupBysItem_FILTERVIDEOCONTINUOUSPLAY,
        Parameters_GroupBysItem_FILTERVIDEODURATION,
        Parameters_GroupBysItem_FILTERYOUTUBEADAPTEDAUDIENCELIST,
        Parameters_GroupBysItem_FILTERYOUTUBEADVIDEO,
        Parameters_GroupBysItem_FILTERYOUTUBEADVIDEOID,
        Parameters_GroupBysItem_FILTERYOUTUBECHANNEL,
        Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER,
        Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER,
        Parameters_GroupBysItem_FILTERYOUTUBEVIDEO,
        Parameters_GroupBysItem_FILTERZIPPOSTALCODE,
        Parameters_GroupBysItem_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS,
        Parameters_GroupBysItem_FILTERTRUEVIEWPLACEMENTID,
        Parameters_GroupBysItem_FILTERPATHPATTERNID,
        Parameters_GroupBysItem_FILTERPATHEVENTINDEX,
        Parameters_GroupBysItem_FILTEREVENTTYPE,
        Parameters_GroupBysItem_FILTERCHANNELGROUPING,
        Parameters_GroupBysItem_FILTEROMSDKAVAILABLE,
        Parameters_GroupBysItem_FILTERDATASOURCE,
        Parameters_GroupBysItem_FILTERCM360PLACEMENTID,
        Parameters_GroupBysItem_FILTERTRUEVIEWCLICKTYPENAME,
        Parameters_GroupBysItem_FILTERTRUEVIEWADTYPENAME,
        Parameters_GroupBysItem_FILTERVIDEOCONTENTDURATION,
        Parameters_GroupBysItem_FILTERMATCHEDGENRETARGET,
        Parameters_GroupBysItem_FILTERVIDEOCONTENTLIVESTREAM,
        Parameters_GroupBysItem_FILTERBUDGETSEGMENTTYPE,
        Parameters_GroupBysItem_FILTERBUDGETSEGMENTBUDGET,
        Parameters_GroupBysItem_FILTERBUDGETSEGMENTSTARTDATE,
        Parameters_GroupBysItem_FILTERBUDGETSEGMENTENDDATE,
        Parameters_GroupBysItem_FILTERBUDGETSEGMENTPACINGPERCENTAGE,
        Parameters_GroupBysItem_FILTERLINEITEMBUDGET,
        Parameters_GroupBysItem_FILTERLINEITEMSTARTDATE,
        Parameters_GroupBysItem_FILTERLINEITEMENDDATE,
        Parameters_GroupBysItem_FILTERINSERTIONORDERGOALTYPE,
        Parameters_GroupBysItem_FILTERLINEITEMPACINGPERCENTAGE,
        Parameters_GroupBysItem_FILTERINSERTIONORDERGOALVALUE,
        Parameters_GroupBysItem_FILTEROMIDCAPABLE,
        Parameters_GroupBysItem_FILTERVENDORMEASUREMENTMODE,
        Parameters_GroupBysItem_FILTERIMPRESSIONLOSSREJECTIONREASON,
        Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZESTART,
        Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE,
        Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT,
        Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE,
        Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE,
        Parameters_GroupBysItem_FILTERVERIFICATIONVIDEORESIZED,
        Parameters_GroupBysItem_FILTERVERIFICATIONAUDIBILITYSTART,
        Parameters_GroupBysItem_FILTERVERIFICATIONAUDIBILITYCOMPLETE,
        Parameters_GroupBysItem_FILTERMEDIATYPE,
        Parameters_GroupBysItem_FILTERAUDIOFEEDTYPENAME,
        ..
      ),

    -- * Parameters_MetricsItem
    Parameters_MetricsItem
      (
        Parameters_MetricsItem_METRICUNKNOWN,
        Parameters_MetricsItem_METRICIMPRESSIONS,
        Parameters_MetricsItem_METRICCLICKS,
        Parameters_MetricsItem_METRICLASTIMPRESSIONS,
        Parameters_MetricsItem_METRICLASTCLICKS,
        Parameters_MetricsItem_METRICTOTALCONVERSIONS,
        Parameters_MetricsItem_METRICMEDIACOSTADVERTISER,
        Parameters_MetricsItem_METRICMEDIACOSTUSD,
        Parameters_MetricsItem_METRICMEDIACOSTPARTNER,
        Parameters_MetricsItem_METRICDATACOSTADVERTISER,
        Parameters_MetricsItem_METRICDATACOSTUSD,
        Parameters_MetricsItem_METRICDATACOSTPARTNER,
        Parameters_MetricsItem_METRICCPMFEE1ADVERTISER,
        Parameters_MetricsItem_METRICCPMFEE1USD,
        Parameters_MetricsItem_METRICCPMFEE1PARTNER,
        Parameters_MetricsItem_METRICCPMFEE2ADVERTISER,
        Parameters_MetricsItem_METRICCPMFEE2USD,
        Parameters_MetricsItem_METRICCPMFEE2PARTNER,
        Parameters_MetricsItem_METRICMEDIAFEE1ADVERTISER,
        Parameters_MetricsItem_METRICMEDIAFEE1USD,
        Parameters_MetricsItem_METRICMEDIAFEE1PARTNER,
        Parameters_MetricsItem_METRICMEDIAFEE2ADVERTISER,
        Parameters_MetricsItem_METRICMEDIAFEE2USD,
        Parameters_MetricsItem_METRICMEDIAFEE2PARTNER,
        Parameters_MetricsItem_METRICREVENUEADVERTISER,
        Parameters_MetricsItem_METRICREVENUEUSD,
        Parameters_MetricsItem_METRICREVENUEPARTNER,
        Parameters_MetricsItem_METRICPROFITADVERTISER,
        Parameters_MetricsItem_METRICPROFITUSD,
        Parameters_MetricsItem_METRICPROFITPARTNER,
        Parameters_MetricsItem_METRICPROFITMARGIN,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTUSD,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTPARTNER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTADVERTISER,
        Parameters_MetricsItem_METRICBILLABLECOSTUSD,
        Parameters_MetricsItem_METRICBILLABLECOSTPARTNER,
        Parameters_MetricsItem_METRICBILLABLECOSTADVERTISER,
        Parameters_MetricsItem_METRICPLATFORMFEEUSD,
        Parameters_MetricsItem_METRICPLATFORMFEEPARTNER,
        Parameters_MetricsItem_METRICPLATFORMFEEADVERTISER,
        Parameters_MetricsItem_METRICVIDEOCOMPLETIONRATE,
        Parameters_MetricsItem_METRICPROFITECPMADVERTISER,
        Parameters_MetricsItem_METRICPROFITECPMUSD,
        Parameters_MetricsItem_METRICPROFITECPMPARTNER,
        Parameters_MetricsItem_METRICREVENUEECPMADVERTISER,
        Parameters_MetricsItem_METRICREVENUEECPMUSD,
        Parameters_MetricsItem_METRICREVENUEECPMPARTNER,
        Parameters_MetricsItem_METRICREVENUEECPCADVERTISER,
        Parameters_MetricsItem_METRICREVENUEECPCUSD,
        Parameters_MetricsItem_METRICREVENUEECPCPARTNER,
        Parameters_MetricsItem_METRICREVENUEECPAADVERTISER,
        Parameters_MetricsItem_METRICREVENUEECPAUSD,
        Parameters_MetricsItem_METRICREVENUEECPAPARTNER,
        Parameters_MetricsItem_METRICREVENUEECPAPVADVERTISER,
        Parameters_MetricsItem_METRICREVENUEECPAPVUSD,
        Parameters_MetricsItem_METRICREVENUEECPAPVPARTNER,
        Parameters_MetricsItem_METRICREVENUEECPAPCADVERTISER,
        Parameters_MetricsItem_METRICREVENUEECPAPCUSD,
        Parameters_MetricsItem_METRICREVENUEECPAPCPARTNER,
        Parameters_MetricsItem_METRICMEDIACOSTECPMADVERTISER,
        Parameters_MetricsItem_METRICMEDIACOSTECPMUSD,
        Parameters_MetricsItem_METRICMEDIACOSTECPMPARTNER,
        Parameters_MetricsItem_METRICMEDIACOSTECPCADVERTISER,
        Parameters_MetricsItem_METRICMEDIACOSTECPCUSD,
        Parameters_MetricsItem_METRICMEDIACOSTECPCPARTNER,
        Parameters_MetricsItem_METRICMEDIACOSTECPAADVERTISER,
        Parameters_MetricsItem_METRICMEDIACOSTECPAUSD,
        Parameters_MetricsItem_METRICMEDIACOSTECPAPARTNER,
        Parameters_MetricsItem_METRICMEDIACOSTECPAPVADVERTISER,
        Parameters_MetricsItem_METRICMEDIACOSTECPAPVUSD,
        Parameters_MetricsItem_METRICMEDIACOSTECPAPVPARTNER,
        Parameters_MetricsItem_METRICMEDIACOSTECPAPCADVERTISER,
        Parameters_MetricsItem_METRICMEDIACOSTECPAPCUSD,
        Parameters_MetricsItem_METRICMEDIACOSTECPAPCPARTNER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMADVERTISER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMUSD,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMPARTNER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCADVERTISER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCUSD,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCPARTNER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAADVERTISER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAUSD,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPARTNER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVADVERTISER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVUSD,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVPARTNER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCADVERTISER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCUSD,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCPARTNER,
        Parameters_MetricsItem_METRICRICHMEDIAVIDEOPLAYS,
        Parameters_MetricsItem_METRICRICHMEDIAVIDEOCOMPLETIONS,
        Parameters_MetricsItem_METRICRICHMEDIAVIDEOPAUSES,
        Parameters_MetricsItem_METRICRICHMEDIAVIDEOMUTES,
        Parameters_MetricsItem_METRICRICHMEDIAVIDEOMIDPOINTS,
        Parameters_MetricsItem_METRICRICHMEDIAVIDEOFULLSCREENS,
        Parameters_MetricsItem_METRICRICHMEDIAVIDEOFIRSTQUARTILECOMPLETES,
        Parameters_MetricsItem_METRICRICHMEDIAVIDEOTHIRDQUARTILECOMPLETES,
        Parameters_MetricsItem_METRICCLICKTOPOSTCLICKCONVERSIONRATE,
        Parameters_MetricsItem_METRICIMPRESSIONSTOCONVERSIONRATE,
        Parameters_MetricsItem_METRICCONVERSIONSPERMILLE,
        Parameters_MetricsItem_METRICCTR,
        Parameters_MetricsItem_METRICBIDREQUESTS,
        Parameters_MetricsItem_METRICUNIQUEVISITORSCOOKIES,
        Parameters_MetricsItem_METRICREVENUEECPCVADVERTISER,
        Parameters_MetricsItem_METRICREVENUEECPCVUSD,
        Parameters_MetricsItem_METRICREVENUEECPCVPARTNER,
        Parameters_MetricsItem_METRICMEDIACOSTECPCVADVERTISER,
        Parameters_MetricsItem_METRICMEDIACOSTECPCVUSD,
        Parameters_MetricsItem_METRICMEDIACOSTECPCVPARTNER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVADVERTISER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVUSD,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVPARTNER,
        Parameters_MetricsItem_METRICRICHMEDIAVIDEOSKIPS,
        Parameters_MetricsItem_METRICFEE2ADVERTISER,
        Parameters_MetricsItem_METRICFEE2USD,
        Parameters_MetricsItem_METRICFEE2PARTNER,
        Parameters_MetricsItem_METRICFEE3ADVERTISER,
        Parameters_MetricsItem_METRICFEE3USD,
        Parameters_MetricsItem_METRICFEE3PARTNER,
        Parameters_MetricsItem_METRICFEE4ADVERTISER,
        Parameters_MetricsItem_METRICFEE4USD,
        Parameters_MetricsItem_METRICFEE4PARTNER,
        Parameters_MetricsItem_METRICFEE5ADVERTISER,
        Parameters_MetricsItem_METRICFEE5USD,
        Parameters_MetricsItem_METRICFEE5PARTNER,
        Parameters_MetricsItem_METRICFEE6ADVERTISER,
        Parameters_MetricsItem_METRICFEE6USD,
        Parameters_MetricsItem_METRICFEE6PARTNER,
        Parameters_MetricsItem_METRICFEE7ADVERTISER,
        Parameters_MetricsItem_METRICFEE7USD,
        Parameters_MetricsItem_METRICFEE7PARTNER,
        Parameters_MetricsItem_METRICFEE8ADVERTISER,
        Parameters_MetricsItem_METRICFEE8USD,
        Parameters_MetricsItem_METRICFEE8PARTNER,
        Parameters_MetricsItem_METRICFEE9ADVERTISER,
        Parameters_MetricsItem_METRICFEE9USD,
        Parameters_MetricsItem_METRICFEE9PARTNER,
        Parameters_MetricsItem_METRICFEE10ADVERTISER,
        Parameters_MetricsItem_METRICFEE10USD,
        Parameters_MetricsItem_METRICFEE10PARTNER,
        Parameters_MetricsItem_METRICFEE11ADVERTISER,
        Parameters_MetricsItem_METRICFEE11USD,
        Parameters_MetricsItem_METRICFEE11PARTNER,
        Parameters_MetricsItem_METRICFEE12ADVERTISER,
        Parameters_MetricsItem_METRICFEE12USD,
        Parameters_MetricsItem_METRICFEE12PARTNER,
        Parameters_MetricsItem_METRICFEE13ADVERTISER,
        Parameters_MetricsItem_METRICFEE13USD,
        Parameters_MetricsItem_METRICFEE13PARTNER,
        Parameters_MetricsItem_METRICFEE14ADVERTISER,
        Parameters_MetricsItem_METRICFEE14USD,
        Parameters_MetricsItem_METRICFEE14PARTNER,
        Parameters_MetricsItem_METRICFEE15ADVERTISER,
        Parameters_MetricsItem_METRICFEE15USD,
        Parameters_MetricsItem_METRICFEE15PARTNER,
        Parameters_MetricsItem_METRICCPMFEE3ADVERTISER,
        Parameters_MetricsItem_METRICCPMFEE3USD,
        Parameters_MetricsItem_METRICCPMFEE3PARTNER,
        Parameters_MetricsItem_METRICCPMFEE4ADVERTISER,
        Parameters_MetricsItem_METRICCPMFEE4USD,
        Parameters_MetricsItem_METRICCPMFEE4PARTNER,
        Parameters_MetricsItem_METRICCPMFEE5ADVERTISER,
        Parameters_MetricsItem_METRICCPMFEE5USD,
        Parameters_MetricsItem_METRICCPMFEE5PARTNER,
        Parameters_MetricsItem_METRICMEDIAFEE3ADVERTISER,
        Parameters_MetricsItem_METRICMEDIAFEE3USD,
        Parameters_MetricsItem_METRICMEDIAFEE3PARTNER,
        Parameters_MetricsItem_METRICMEDIAFEE4ADVERTISER,
        Parameters_MetricsItem_METRICMEDIAFEE4USD,
        Parameters_MetricsItem_METRICMEDIAFEE4PARTNER,
        Parameters_MetricsItem_METRICMEDIAFEE5ADVERTISER,
        Parameters_MetricsItem_METRICMEDIAFEE5USD,
        Parameters_MetricsItem_METRICMEDIAFEE5PARTNER,
        Parameters_MetricsItem_METRICVIDEOCOMPANIONIMPRESSIONS,
        Parameters_MetricsItem_METRICVIDEOCOMPANIONCLICKS,
        Parameters_MetricsItem_METRICFEE16ADVERTISER,
        Parameters_MetricsItem_METRICFEE16USD,
        Parameters_MetricsItem_METRICFEE16PARTNER,
        Parameters_MetricsItem_METRICFEE17ADVERTISER,
        Parameters_MetricsItem_METRICFEE17USD,
        Parameters_MetricsItem_METRICFEE17PARTNER,
        Parameters_MetricsItem_METRICFEE18ADVERTISER,
        Parameters_MetricsItem_METRICFEE18USD,
        Parameters_MetricsItem_METRICFEE18PARTNER,
        Parameters_MetricsItem_METRICTRUEVIEWVIEWS,
        Parameters_MetricsItem_METRICTRUEVIEWUNIQUEVIEWERS,
        Parameters_MetricsItem_METRICTRUEVIEWEARNEDVIEWS,
        Parameters_MetricsItem_METRICTRUEVIEWEARNEDSUBSCRIBERS,
        Parameters_MetricsItem_METRICTRUEVIEWEARNEDPLAYLISTADDITIONS,
        Parameters_MetricsItem_METRICTRUEVIEWEARNEDLIKES,
        Parameters_MetricsItem_METRICTRUEVIEWEARNEDSHARES,
        Parameters_MetricsItem_METRICTRUEVIEWIMPRESSIONSHARE,
        Parameters_MetricsItem_METRICTRUEVIEWLOSTISBUDGET,
        Parameters_MetricsItem_METRICTRUEVIEWLOSTISRANK,
        Parameters_MetricsItem_METRICTRUEVIEWVIEWTHROUGHCONVERSION,
        Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONMANYPERVIEW,
        Parameters_MetricsItem_METRICTRUEVIEWVIEWRATE,
        Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONRATEONEPERVIEW,
        Parameters_MetricsItem_METRICTRUEVIEWCPVADVERTISER,
        Parameters_MetricsItem_METRICTRUEVIEWCPVUSD,
        Parameters_MetricsItem_METRICTRUEVIEWCPVPARTNER,
        Parameters_MetricsItem_METRICFEE19ADVERTISER,
        Parameters_MetricsItem_METRICFEE19USD,
        Parameters_MetricsItem_METRICFEE19PARTNER,
        Parameters_MetricsItem_METRICTEATRUEVIEWIMPRESSIONS,
        Parameters_MetricsItem_METRICTEATRUEVIEWUNIQUECOOKIES,
        Parameters_MetricsItem_METRICFEE20ADVERTISER,
        Parameters_MetricsItem_METRICFEE20USD,
        Parameters_MetricsItem_METRICFEE20PARTNER,
        Parameters_MetricsItem_METRICFEE21ADVERTISER,
        Parameters_MetricsItem_METRICFEE21USD,
        Parameters_MetricsItem_METRICFEE21PARTNER,
        Parameters_MetricsItem_METRICFEE22ADVERTISER,
        Parameters_MetricsItem_METRICFEE22USD,
        Parameters_MetricsItem_METRICFEE22PARTNER,
        Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESADVERTISER,
        Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESUSD,
        Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESPARTNER,
        Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWADVERTISER,
        Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWUSD,
        Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWPARTNER,
        Parameters_MetricsItem_METRICPROFITVIEWABLEECPMADVERTISER,
        Parameters_MetricsItem_METRICPROFITVIEWABLEECPMUSD,
        Parameters_MetricsItem_METRICPROFITVIEWABLEECPMPARTNER,
        Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMADVERTISER,
        Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMUSD,
        Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMPARTNER,
        Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMADVERTISER,
        Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMUSD,
        Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMPARTNER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMADVERTISER,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMUSD,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMPARTNER,
        Parameters_MetricsItem_METRICTRUEVIEWENGAGEMENTS,
        Parameters_MetricsItem_METRICTRUEVIEWENGAGEMENTRATE,
        Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEADVERTISER,
        Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEUSD,
        Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEPARTNER,
        Parameters_MetricsItem_METRICACTIVEVIEWVIEWABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWELIGIBLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWMEASURABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWPCTMEASURABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWPCTVIEWABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWAVERAGEVIEWABLETIME,
        Parameters_MetricsItem_METRICACTIVEVIEWUNMEASURABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWUNVIEWABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONUNMEASURABLE,
        Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONUNVIEWABLE,
        Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONVIEWABLE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVIEWABLEFORTIMETHRESHOLD,
        Parameters_MetricsItem_METRICACTIVEVIEWVIEWABLEFORTIMETHRESHOLD,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEATSTART,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEFIRSTQUAR,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLESECONDQUAR,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLETHIRDQUAR,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEONCOMPLETE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEATSTART,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEFIRSTQUAR,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLESECONDQUAR,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLETHIRDQUAR,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEONCOMPLETE,
        Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEVISIBLEONCOMPLETEIMPRESSIONS,
        Parameters_MetricsItem_METRICVIEWABLEBIDREQUESTS,
        Parameters_MetricsItem_METRICCOOKIEREACHIMPRESSIONREACH,
        Parameters_MetricsItem_METRICCOOKIEREACHAVERAGEIMPRESSIONFREQUENCY,
        Parameters_MetricsItem_METRICDBMENGAGEMENTRATE,
        Parameters_MetricsItem_METRICRICHMEDIASCROLLS,
        Parameters_MetricsItem_METRICCMPOSTVIEWREVENUE,
        Parameters_MetricsItem_METRICCMPOSTCLICKREVENUE,
        Parameters_MetricsItem_METRICFLOODLIGHTIMPRESSIONS,
        Parameters_MetricsItem_METRICBILLABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICNIELSENAVERAGEFREQUENCY,
        Parameters_MetricsItem_METRICNIELSENIMPRESSIONS,
        Parameters_MetricsItem_METRICNIELSENUNIQUEAUDIENCE,
        Parameters_MetricsItem_METRICNIELSENGRP,
        Parameters_MetricsItem_METRICNIELSENIMPRESSIONINDEX,
        Parameters_MetricsItem_METRICNIELSENIMPRESSIONSSHARE,
        Parameters_MetricsItem_METRICNIELSENPOPULATION,
        Parameters_MetricsItem_METRICNIELSENPOPULATIONREACH,
        Parameters_MetricsItem_METRICNIELSENPOPULATIONSHARE,
        Parameters_MetricsItem_METRICNIELSENREACHINDEX,
        Parameters_MetricsItem_METRICNIELSENREACHSHARE,
        Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONMEASURABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONRATE,
        Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWMEASURABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWRATE,
        Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICMEASURABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICVIEWABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICVIEWABLERATE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEIMPRESSIONS,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTFULLYONSCREEN2SEC,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTFULLSCREEN,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTINBACKGROUND,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFADPLAYED,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFCOMPLETEDIMPRESSIONSAUDIBLEANDVISIBLE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFCOMPLETEDIMPRESSIONSVISIBLE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFFIRSTQUARTILEIMPRESSIONSAUDIBLEANDVISIBLE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFFIRSTQUARTILEIMPRESSIONSVISIBLE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFMIDPOINTIMPRESSIONSAUDIBLEANDVISIBLE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFMIDPOINTIMPRESSIONSVISIBLE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFTHIRDQUARTILEIMPRESSIONSAUDIBLEANDVISIBLE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFTHIRDQUARTILEIMPRESSIONSVISIBLE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEAUDIBLE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEAUDIBLEANDVISIBLE,
        Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEVISIBLE,
        Parameters_MetricsItem_METRICADAPTEDAUDIENCEFREQUENCY,
        Parameters_MetricsItem_METRICADLINGOFEEADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICAUDIOCLIENTCOSTECPCLADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICAUDIOMEDIACOSTECPCLADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICAUDIOMUTESAUDIO,
        Parameters_MetricsItem_METRICAUDIOREVENUEECPCLADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICAUDIOUNMUTESAUDIO,
        Parameters_MetricsItem_METRICAUDIOUNMUTESVIDEO,
        Parameters_MetricsItem_METRICAVERAGEDISPLAYTIME,
        Parameters_MetricsItem_METRICAVERAGEIMPRESSIONFREQUENCYPERUSER,
        Parameters_MetricsItem_METRICAVERAGEINTERACTIONTIME,
        Parameters_MetricsItem_METRICAVERAGEWATCHTIMEPERIMPRESSION,
        Parameters_MetricsItem_METRICBEGINTORENDERELIGIBLEIMPRESSIONS,
        Parameters_MetricsItem_METRICBEGINTORENDERIMPRESSIONS,
        Parameters_MetricsItem_METRICBENCHMARKFREQUENCY,
        Parameters_MetricsItem_METRICBRANDLIFTABSOLUTEBRANDLIFT,
        Parameters_MetricsItem_METRICBRANDLIFTALLSURVEYRESPONSES,
        Parameters_MetricsItem_METRICBRANDLIFTBASELINEPOSITIVERESPONSERATE,
        Parameters_MetricsItem_METRICBRANDLIFTBASELINESURVEYRESPONSES,
        Parameters_MetricsItem_METRICBRANDLIFTCOSTPERLIFTEDUSER,
        Parameters_MetricsItem_METRICBRANDLIFTEXPOSEDSURVEYRESPONSES,
        Parameters_MetricsItem_METRICBRANDLIFTHEADROOMBRANDLIFT,
        Parameters_MetricsItem_METRICBRANDLIFTRELATIVEBRANDLIFT,
        Parameters_MetricsItem_METRICBRANDLIFTUSERS,
        Parameters_MetricsItem_METRICCARDCLICKS,
        Parameters_MetricsItem_METRICCLIENTCOSTADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCLIENTCOSTECPAADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCLIENTCOSTECPAPCADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCLIENTCOSTECPAPVADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCLIENTCOSTECPCADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCLIENTCOSTECPMADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCLIENTCOSTVIEWABLEECPMADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCMPOSTCLICKREVENUECROSSENVIRONMENT,
        Parameters_MetricsItem_METRICCMPOSTVIEWREVENUECROSSENVIRONMENT,
        Parameters_MetricsItem_METRICCOMPANIONCLICKSAUDIO,
        Parameters_MetricsItem_METRICCOMPANIONIMPRESSIONSAUDIO,
        Parameters_MetricsItem_METRICCOMPLETELISTENSAUDIO,
        Parameters_MetricsItem_METRICCOMPLETIONRATEAUDIO,
        Parameters_MetricsItem_METRICCOUNTERS,
        Parameters_MetricsItem_METRICCUSTOMFEE1ADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCUSTOMFEE2ADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCUSTOMFEE3ADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCUSTOMFEE4ADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCUSTOMFEE5ADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICCUSTOMVALUEPER1000IMPRESSIONS,
        Parameters_MetricsItem_METRICENGAGEMENTS,
        Parameters_MetricsItem_METRICESTIMATEDCPMFORIMPRESSIONSWITHCUSTOMVALUEADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICESTIMATEDTOTALCOSTFORIMPRESSIONSWITHCUSTOMVALUEADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICEXITS,
        Parameters_MetricsItem_METRICEXPANSIONS,
        Parameters_MetricsItem_METRICFIRSTQUARTILEAUDIO,
        Parameters_MetricsItem_METRICGENERALINVALIDTRAFFICGIVTIMPRESSIONS,
        Parameters_MetricsItem_METRICGENERALINVALIDTRAFFICGIVTTRACKEDADS,
        Parameters_MetricsItem_METRICGIVTACTIVEVIEWELIGIBLEIMPRESSIONS,
        Parameters_MetricsItem_METRICGIVTACTIVEVIEWMEASURABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICGIVTACTIVEVIEWVIEWABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICGIVTBEGINTORENDERIMPRESSIONS,
        Parameters_MetricsItem_METRICGIVTCLICKS,
        Parameters_MetricsItem_METRICGMAILCONVERSIONS,
        Parameters_MetricsItem_METRICGMAILPOSTCLICKCONVERSIONS,
        Parameters_MetricsItem_METRICGMAILPOSTVIEWCONVERSIONS,
        Parameters_MetricsItem_METRICGMAILPOTENTIALVIEWS,
        Parameters_MetricsItem_METRICIMPRESSIONSWITHCUSTOMVALUE,
        Parameters_MetricsItem_METRICIMPRESSIONSWITHPOSITIVECUSTOMVALUE,
        Parameters_MetricsItem_METRICIMPRESSIONCUSTOMVALUECOST,
        Parameters_MetricsItem_METRICINTERACTIVEIMPRESSIONS,
        Parameters_MetricsItem_METRICINVALIDACTIVEVIEWELIGIBLEIMPRESSIONS,
        Parameters_MetricsItem_METRICINVALIDACTIVEVIEWMEASURABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICINVALIDACTIVEVIEWVIEWABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICINVALIDBEGINTORENDERIMPRESSIONS,
        Parameters_MetricsItem_METRICINVALIDCLICKS,
        Parameters_MetricsItem_METRICINVALIDIMPRESSIONS,
        Parameters_MetricsItem_METRICINVALIDTRACKEDADS,
        Parameters_MetricsItem_METRICMEDIACOSTADVERTISERCURRENCYPERSTOREVISITADXONLY,
        Parameters_MetricsItem_METRICMIDPOINTAUDIO,
        Parameters_MetricsItem_METRICORIGINALAUDIENCEFREQUENCY,
        Parameters_MetricsItem_METRICPAUSESAUDIO,
        Parameters_MetricsItem_METRICPERCENTIMPRESSIONSWITHPOSITIVECUSTOMVALUE,
        Parameters_MetricsItem_METRICPLATFORMFEERATE,
        Parameters_MetricsItem_METRICPOSTCLICKCONVERSIONSCROSSENVIRONMENT,
        Parameters_MetricsItem_METRICPOSTVIEWCONVERSIONSCROSSENVIRONMENT,
        Parameters_MetricsItem_METRICPOTENTIALIMPRESSIONS,
        Parameters_MetricsItem_METRICPOTENTIALVIEWS,
        Parameters_MetricsItem_METRICPREMIUMFEEADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICPROGRAMMATICGUARANTEEDIMPRESSIONSPASSEDDUETOFREQUENCY,
        Parameters_MetricsItem_METRICPROGRAMMATICGUARANTEEDSAVINGSREINVESTEDDUETOFREQUENCYADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICREFUNDBILLABLECOSTADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICREFUNDMEDIACOSTADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICREFUNDPLATFORMFEEADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICREVENUEADVERTISERCURRENCYPERSTOREVISITADXONLY,
        Parameters_MetricsItem_METRICRICHMEDIAENGAGEMENTS,
        Parameters_MetricsItem_METRICSTARTSAUDIO,
        Parameters_MetricsItem_METRICSTOPSAUDIO,
        Parameters_MetricsItem_METRICSTOREVISITSADXONLY,
        Parameters_MetricsItem_METRICSTOREVISITCONVERSIONS,
        Parameters_MetricsItem_METRICTHIRDQUARTILEAUDIO,
        Parameters_MetricsItem_METRICTIMERS,
        Parameters_MetricsItem_METRICTOTALAUDIOMEDIACOSTECPCLADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICTOTALCONVERSIONSCROSSENVIRONMENT,
        Parameters_MetricsItem_METRICTOTALDISPLAYTIME,
        Parameters_MetricsItem_METRICTOTALIMPRESSIONCUSTOMVALUE,
        Parameters_MetricsItem_METRICTOTALINTERACTIONTIME,
        Parameters_MetricsItem_METRICTOTALMEDIACOSTADVERTISERCURRENCYPERSTOREVISITADXONLY,
        Parameters_MetricsItem_METRICTOTALUSERS,
        Parameters_MetricsItem_METRICTRACKEDADS,
        Parameters_MetricsItem_METRICTRUEVIEWGENERALINVALIDTRAFFICGIVTVIEWS,
        Parameters_MetricsItem_METRICTRUEVIEWINVALIDVIEWS,
        Parameters_MetricsItem_METRICUNIQUECOOKIESWITHIMPRESSIONS,
        Parameters_MetricsItem_METRICUNIQUEREACHAVERAGEIMPRESSIONFREQUENCY,
        Parameters_MetricsItem_METRICUNIQUEREACHCLICKREACH,
        Parameters_MetricsItem_METRICUNIQUEREACHIMPRESSIONREACH,
        Parameters_MetricsItem_METRICUNIQUEREACHTOTALREACH,
        Parameters_MetricsItem_METRICVERIFIABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICVIDEOCLIENTCOSTECPCVADVERTISERCURRENCY,
        Parameters_MetricsItem_METRICWATCHTIME,
        Parameters_MetricsItem_METRICLASTTOUCHTOTALCONVERSIONS,
        Parameters_MetricsItem_METRICLASTTOUCHCLICKTHROUGHCONVERSIONS,
        Parameters_MetricsItem_METRICLASTTOUCHVIEWTHROUGHCONVERSIONS,
        Parameters_MetricsItem_METRICTOTALPATHS,
        Parameters_MetricsItem_METRICTOTALEXPOSURES,
        Parameters_MetricsItem_METRICPATHCONVERSIONRATE,
        Parameters_MetricsItem_METRICCONVERTINGPATHS,
        Parameters_MetricsItem_METRICACTIVITYREVENUE,
        Parameters_MetricsItem_METRICPERCENTINVALIDIMPRESSIONSPREBID,
        Parameters_MetricsItem_METRICGRPCORRECTEDIMPRESSIONS,
        Parameters_MetricsItem_METRICDEMOCORRECTEDCLICKS,
        Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHBYDEMO,
        Parameters_MetricsItem_METRICVIRTUALPEOPLECLICKREACHBYDEMO,
        Parameters_MetricsItem_METRICVIRTUALPEOPLEAVERAGEIMPRESSIONFREQUENCYBYDEMO,
        Parameters_MetricsItem_METRICDEMOCOMPOSITIONIMPRESSION,
        Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHSHAREPERCENT,
        Parameters_MetricsItem_METRICDEMOPOPULATION,
        Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHPERCENT,
        Parameters_MetricsItem_METRICTARGETRATINGPOINTS,
        Parameters_MetricsItem_METRICPROVISIONALIMPRESSIONS,
        Parameters_MetricsItem_METRICVENDORBLOCKEDADS,
        Parameters_MetricsItem_METRICGRPCORRECTEDVIEWABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICGRPCORRECTEDVIEWABLEIMPRESSIONSSHAREPERCENT,
        Parameters_MetricsItem_METRICVIEWABLEGROSSRATINGPOINTS,
        Parameters_MetricsItem_METRICVIRTUALPEOPLEAVERAGEVIEWABLEIMPRESSIONFREQUENCYBYDEMO,
        Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHBYDEMO,
        Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHPERCENT,
        Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHSHAREPERCENT,
        Parameters_MetricsItem_METRICENGAGEMENTRATE,
        Parameters_MetricsItem_METRICCM360POSTVIEWREVENUE,
        Parameters_MetricsItem_METRICCM360POSTCLICKREVENUE,
        Parameters_MetricsItem_METRICCM360POSTCLICKREVENUECROSSENVIRONMENT,
        Parameters_MetricsItem_METRICCM360POSTVIEWREVENUECROSSENVIRONMENT,
        Parameters_MetricsItem_METRICPERCENTAGEFROMCURRENTIOGOAL,
        Parameters_MetricsItem_METRICDUPLICATEFLOODLIGHTIMPRESSIONS,
        Parameters_MetricsItem_METRICCOOKIECONSENTEDFLOODLIGHTIMPRESSIONS,
        Parameters_MetricsItem_METRICCOOKIEUNCONSENTEDFLOODLIGHTIMPRESSIONS,
        Parameters_MetricsItem_METRICTRACKINGUNCONSENTEDCLICKS,
        Parameters_MetricsItem_METRICIMPRESSIONLOSSTARGETEDIMPRESSIONS,
        Parameters_MetricsItem_METRICLINEITEMBIDRESPONSECOUNT,
        Parameters_MetricsItem_METRICWINLOSSRATE,
        Parameters_MetricsItem_METRICWINLOSSDEALAVAILABLEREQUESTS,
        Parameters_MetricsItem_METRICWINLOSSLINEITEMAVAILABLEREQUESTS,
        Parameters_MetricsItem_METRICWINLOSSDEALTARGETEDIMPRESSIONS,
        Parameters_MetricsItem_METRICWINLOSSLINEITEMTARGETEDIMPRESSIONS,
        Parameters_MetricsItem_METRICVERIFICATIONVIDEOPLAYERSIZEMEASURABLEIMPRESSIONS,
        Parameters_MetricsItem_METRICTRUEVIEWALLADSEQUENCEIMPRESSIONS,
        ..
      ),

    -- * Parameters_Type
    Parameters_Type
      (
        Parameters_Type_TYPEGENERAL,
        Parameters_Type_TYPEAUDIENCEPERFORMANCE,
        Parameters_Type_TYPEINVENTORYAVAILABILITY,
        Parameters_Type_TYPEKEYWORD,
        Parameters_Type_TYPEPIXELLOAD,
        Parameters_Type_TYPEAUDIENCECOMPOSITION,
        Parameters_Type_TYPECROSSPARTNER,
        Parameters_Type_TYPEPAGECATEGORY,
        Parameters_Type_TYPETHIRDPARTYDATAPROVIDER,
        Parameters_Type_TYPECROSSPARTNERTHIRDPARTYDATAPROVIDER,
        Parameters_Type_TYPECLIENTSAFE,
        Parameters_Type_TYPEORDERID,
        Parameters_Type_TYPEFEE,
        Parameters_Type_TYPECROSSFEE,
        Parameters_Type_TYPEACTIVEGRP,
        Parameters_Type_TYPEYOUTUBEVERTICAL,
        Parameters_Type_TYPECOMSCOREVCE,
        Parameters_Type_TYPETRUEVIEW,
        Parameters_Type_TYPENIELSENAUDIENCEPROFILE,
        Parameters_Type_TYPENIELSENDAILYREACHBUILD,
        Parameters_Type_TYPENIELSENSITE,
        Parameters_Type_TYPEREACHANDFREQUENCY,
        Parameters_Type_TYPEESTIMATEDCONVERSION,
        Parameters_Type_TYPEVERIFICATION,
        Parameters_Type_TYPETRUEVIEWIAR,
        Parameters_Type_TYPENIELSENONLINEGLOBALMARKET,
        Parameters_Type_TYPEPETRANIELSENAUDIENCEPROFILE,
        Parameters_Type_TYPEPETRANIELSENDAILYREACHBUILD,
        Parameters_Type_TYPEPETRANIELSENONLINEGLOBALMARKET,
        Parameters_Type_TYPENOTSUPPORTED,
        Parameters_Type_TYPEREACHAUDIENCE,
        Parameters_Type_TYPELINEARTVSEARCHLIFT,
        Parameters_Type_TYPEPATH,
        Parameters_Type_TYPEPATHATTRIBUTION,
        ..
      ),

    -- * PathFilter_PathMatchPosition
    PathFilter_PathMatchPosition
      (
        PathFilter_PathMatchPosition_Any,
        PathFilter_PathMatchPosition_First,
        PathFilter_PathMatchPosition_Last,
        ..
      ),

    -- * PathQueryOptionsFilter_Filter
    PathQueryOptionsFilter_Filter
      (
        PathQueryOptionsFilter_Filter_FILTERUNKNOWN,
        PathQueryOptionsFilter_Filter_FILTERDATE,
        PathQueryOptionsFilter_Filter_FILTERDAYOFWEEK,
        PathQueryOptionsFilter_Filter_FILTERWEEK,
        PathQueryOptionsFilter_Filter_FILTERMONTH,
        PathQueryOptionsFilter_Filter_FILTERYEAR,
        PathQueryOptionsFilter_Filter_FILTERTIMEOFDAY,
        PathQueryOptionsFilter_Filter_FILTERCONVERSIONDELAY,
        PathQueryOptionsFilter_Filter_FILTERCREATIVEID,
        PathQueryOptionsFilter_Filter_FILTERCREATIVESIZE,
        PathQueryOptionsFilter_Filter_FILTERCREATIVETYPE,
        PathQueryOptionsFilter_Filter_FILTEREXCHANGEID,
        PathQueryOptionsFilter_Filter_FILTERADPOSITION,
        PathQueryOptionsFilter_Filter_FILTERPUBLICINVENTORY,
        PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCE,
        PathQueryOptionsFilter_Filter_FILTERCITY,
        PathQueryOptionsFilter_Filter_FILTERREGION,
        PathQueryOptionsFilter_Filter_FILTERDMA,
        PathQueryOptionsFilter_Filter_FILTERCOUNTRY,
        PathQueryOptionsFilter_Filter_FILTERSITEID,
        PathQueryOptionsFilter_Filter_FILTERCHANNELID,
        PathQueryOptionsFilter_Filter_FILTERPARTNER,
        PathQueryOptionsFilter_Filter_FILTERADVERTISER,
        PathQueryOptionsFilter_Filter_FILTERINSERTIONORDER,
        PathQueryOptionsFilter_Filter_FILTERLINEITEM,
        PathQueryOptionsFilter_Filter_FILTERPARTNERCURRENCY,
        PathQueryOptionsFilter_Filter_FILTERADVERTISERCURRENCY,
        PathQueryOptionsFilter_Filter_FILTERADVERTISERTIMEZONE,
        PathQueryOptionsFilter_Filter_FILTERLINEITEMTYPE,
        PathQueryOptionsFilter_Filter_FILTERUSERLIST,
        PathQueryOptionsFilter_Filter_FILTERUSERLISTFIRSTPARTY,
        PathQueryOptionsFilter_Filter_FILTERUSERLISTTHIRDPARTY,
        PathQueryOptionsFilter_Filter_FILTERTARGETEDUSERLIST,
        PathQueryOptionsFilter_Filter_FILTERDATAPROVIDER,
        PathQueryOptionsFilter_Filter_FILTERORDERID,
        PathQueryOptionsFilter_Filter_FILTERVIDEOPLAYERSIZE,
        PathQueryOptionsFilter_Filter_FILTERVIDEODURATIONSECONDS,
        PathQueryOptionsFilter_Filter_FILTERKEYWORD,
        PathQueryOptionsFilter_Filter_FILTERPAGECATEGORY,
        PathQueryOptionsFilter_Filter_FILTERCAMPAIGNDAILYFREQUENCY,
        PathQueryOptionsFilter_Filter_FILTERLINEITEMDAILYFREQUENCY,
        PathQueryOptionsFilter_Filter_FILTERLINEITEMLIFETIMEFREQUENCY,
        PathQueryOptionsFilter_Filter_FILTEROS,
        PathQueryOptionsFilter_Filter_FILTERBROWSER,
        PathQueryOptionsFilter_Filter_FILTERCARRIER,
        PathQueryOptionsFilter_Filter_FILTERSITELANGUAGE,
        PathQueryOptionsFilter_Filter_FILTERINVENTORYFORMAT,
        PathQueryOptionsFilter_Filter_FILTERZIPCODE,
        PathQueryOptionsFilter_Filter_FILTERVIDEORATINGTIER,
        PathQueryOptionsFilter_Filter_FILTERVIDEOFORMATSUPPORT,
        PathQueryOptionsFilter_Filter_FILTERVIDEOSKIPPABLESUPPORT,
        PathQueryOptionsFilter_Filter_FILTERVIDEOCREATIVEDURATION,
        PathQueryOptionsFilter_Filter_FILTERPAGELAYOUT,
        PathQueryOptionsFilter_Filter_FILTERVIDEOADPOSITIONINSTREAM,
        PathQueryOptionsFilter_Filter_FILTERAGE,
        PathQueryOptionsFilter_Filter_FILTERGENDER,
        PathQueryOptionsFilter_Filter_FILTERQUARTER,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCONVERSIONTYPE,
        PathQueryOptionsFilter_Filter_FILTERMOBILEGEO,
        PathQueryOptionsFilter_Filter_FILTERMRAIDSUPPORT,
        PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWEXPECTEDVIEWABILITY,
        PathQueryOptionsFilter_Filter_FILTERVIDEOCREATIVEDURATIONSKIPPABLE,
        PathQueryOptionsFilter_Filter_FILTERNIELSENCOUNTRYCODE,
        PathQueryOptionsFilter_Filter_FILTERNIELSENDEVICEID,
        PathQueryOptionsFilter_Filter_FILTERNIELSENGENDER,
        PathQueryOptionsFilter_Filter_FILTERNIELSENAGE,
        PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCETYPE,
        PathQueryOptionsFilter_Filter_FILTERCREATIVEWIDTH,
        PathQueryOptionsFilter_Filter_FILTERCREATIVEHEIGHT,
        PathQueryOptionsFilter_Filter_FILTERDFPORDERID,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWAGE,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWGENDER,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPARENTALSTATUS,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREMARKETINGLIST,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWINTEREST,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUPID,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUPADID,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARLANGUAGE,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARGENDER,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARAGE,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCATEGORY,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCOUNTRY,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCITY,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREGION,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARZIPCODE,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREMARKETINGLIST,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARINTEREST,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARPARENTALSTATUS,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARTIMEOFDAY,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCUSTOMAFFINITY,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCATEGORY,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWKEYWORD,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPLACEMENT,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWURL,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCOUNTRY,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREGION,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCITY,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDMA,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWZIPCODE,
        PathQueryOptionsFilter_Filter_FILTERNOTSUPPORTED,
        PathQueryOptionsFilter_Filter_FILTERMEDIAPLAN,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARYOUTUBECHANNEL,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARYOUTUBEVIDEO,
        PathQueryOptionsFilter_Filter_FILTERSKIPPABLESUPPORT,
        PathQueryOptionsFilter_Filter_FILTERCOMPANIONCREATIVEID,
        PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTDESCRIPTION,
        PathQueryOptionsFilter_Filter_FILTERFLOODLIGHTACTIVITYID,
        PathQueryOptionsFilter_Filter_FILTERDEVICEMODEL,
        PathQueryOptionsFilter_Filter_FILTERDEVICEMAKE,
        PathQueryOptionsFilter_Filter_FILTERDEVICETYPE,
        PathQueryOptionsFilter_Filter_FILTERCREATIVEATTRIBUTE,
        PathQueryOptionsFilter_Filter_FILTERINVENTORYCOMMITMENTTYPE,
        PathQueryOptionsFilter_Filter_FILTERINVENTORYRATETYPE,
        PathQueryOptionsFilter_Filter_FILTERINVENTORYDELIVERYMETHOD,
        PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEEXTERNALID,
        PathQueryOptionsFilter_Filter_FILTERAUTHORIZEDSELLERSTATE,
        PathQueryOptionsFilter_Filter_FILTERVIDEODURATIONSECONDSRANGE,
        PathQueryOptionsFilter_Filter_FILTERPARTNERNAME,
        PathQueryOptionsFilter_Filter_FILTERPARTNERSTATUS,
        PathQueryOptionsFilter_Filter_FILTERADVERTISERNAME,
        PathQueryOptionsFilter_Filter_FILTERADVERTISERINTEGRATIONCODE,
        PathQueryOptionsFilter_Filter_FILTERADVERTISERINTEGRATIONSTATUS,
        PathQueryOptionsFilter_Filter_FILTERCARRIERNAME,
        PathQueryOptionsFilter_Filter_FILTERCHANNELNAME,
        PathQueryOptionsFilter_Filter_FILTERCITYNAME,
        PathQueryOptionsFilter_Filter_FILTERCOMPANIONCREATIVENAME,
        PathQueryOptionsFilter_Filter_FILTERUSERLISTFIRSTPARTYNAME,
        PathQueryOptionsFilter_Filter_FILTERUSERLISTTHIRDPARTYNAME,
        PathQueryOptionsFilter_Filter_FILTERNIELSENRESTATEMENTDATE,
        PathQueryOptionsFilter_Filter_FILTERNIELSENDATERANGE,
        PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERNAME,
        PathQueryOptionsFilter_Filter_FILTERREGIONNAME,
        PathQueryOptionsFilter_Filter_FILTERDMANAME,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREGIONNAME,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDMANAME,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREGIONNAME,
        PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWCUSTOMMETRICID,
        PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWCUSTOMMETRICNAME,
        PathQueryOptionsFilter_Filter_FILTERADTYPE,
        PathQueryOptionsFilter_Filter_FILTERALGORITHM,
        PathQueryOptionsFilter_Filter_FILTERALGORITHMID,
        PathQueryOptionsFilter_Filter_FILTERAMPPAGEREQUEST,
        PathQueryOptionsFilter_Filter_FILTERANONYMOUSINVENTORYMODELING,
        PathQueryOptionsFilter_Filter_FILTERAPPURL,
        PathQueryOptionsFilter_Filter_FILTERAPPURLEXCLUDED,
        PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLIST,
        PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLISTCOST,
        PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLISTTYPE,
        PathQueryOptionsFilter_Filter_FILTERATTRIBUTIONMODEL,
        PathQueryOptionsFilter_Filter_FILTERAUDIENCELIST,
        PathQueryOptionsFilter_Filter_FILTERAUDIENCELISTCOST,
        PathQueryOptionsFilter_Filter_FILTERAUDIENCELISTTYPE,
        PathQueryOptionsFilter_Filter_FILTERAUDIENCENAME,
        PathQueryOptionsFilter_Filter_FILTERAUDIENCETYPE,
        PathQueryOptionsFilter_Filter_FILTERBILLABLEOUTCOME,
        PathQueryOptionsFilter_Filter_FILTERBRANDLIFTTYPE,
        PathQueryOptionsFilter_Filter_FILTERCHANNELTYPE,
        PathQueryOptionsFilter_Filter_FILTERCMPLACEMENTID,
        PathQueryOptionsFilter_Filter_FILTERCONVERSIONSOURCE,
        PathQueryOptionsFilter_Filter_FILTERCONVERSIONSOURCEID,
        PathQueryOptionsFilter_Filter_FILTERCOUNTRYID,
        PathQueryOptionsFilter_Filter_FILTERCREATIVE,
        PathQueryOptionsFilter_Filter_FILTERCREATIVEASSET,
        PathQueryOptionsFilter_Filter_FILTERCREATIVEINTEGRATIONCODE,
        PathQueryOptionsFilter_Filter_FILTERCREATIVERENDEREDINAMP,
        PathQueryOptionsFilter_Filter_FILTERCREATIVESOURCE,
        PathQueryOptionsFilter_Filter_FILTERCREATIVESTATUS,
        PathQueryOptionsFilter_Filter_FILTERDATAPROVIDERNAME,
        PathQueryOptionsFilter_Filter_FILTERDETAILEDDEMOGRAPHICS,
        PathQueryOptionsFilter_Filter_FILTERDETAILEDDEMOGRAPHICSID,
        PathQueryOptionsFilter_Filter_FILTERDEVICE,
        PathQueryOptionsFilter_Filter_FILTERGAMINSERTIONORDER,
        PathQueryOptionsFilter_Filter_FILTERGAMLINEITEM,
        PathQueryOptionsFilter_Filter_FILTERGAMLINEITEMID,
        PathQueryOptionsFilter_Filter_FILTERDIGITALCONTENTLABEL,
        PathQueryOptionsFilter_Filter_FILTERDOMAIN,
        PathQueryOptionsFilter_Filter_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST,
        PathQueryOptionsFilter_Filter_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST,
        PathQueryOptionsFilter_Filter_FILTEREXCHANGE,
        PathQueryOptionsFilter_Filter_FILTEREXCHANGECODE,
        PathQueryOptionsFilter_Filter_FILTEREXTENSION,
        PathQueryOptionsFilter_Filter_FILTEREXTENSIONSTATUS,
        PathQueryOptionsFilter_Filter_FILTEREXTENSIONTYPE,
        PathQueryOptionsFilter_Filter_FILTERFIRSTPARTYAUDIENCELISTCOST,
        PathQueryOptionsFilter_Filter_FILTERFIRSTPARTYAUDIENCELISTTYPE,
        PathQueryOptionsFilter_Filter_FILTERFLOODLIGHTACTIVITY,
        PathQueryOptionsFilter_Filter_FILTERFORMAT,
        PathQueryOptionsFilter_Filter_FILTERGMAILAGE,
        PathQueryOptionsFilter_Filter_FILTERGMAILCITY,
        PathQueryOptionsFilter_Filter_FILTERGMAILCOUNTRY,
        PathQueryOptionsFilter_Filter_FILTERGMAILCOUNTRYNAME,
        PathQueryOptionsFilter_Filter_FILTERGMAILDEVICETYPE,
        PathQueryOptionsFilter_Filter_FILTERGMAILDEVICETYPENAME,
        PathQueryOptionsFilter_Filter_FILTERGMAILGENDER,
        PathQueryOptionsFilter_Filter_FILTERGMAILREGION,
        PathQueryOptionsFilter_Filter_FILTERGMAILREMARKETINGLIST,
        PathQueryOptionsFilter_Filter_FILTERHOUSEHOLDINCOME,
        PathQueryOptionsFilter_Filter_FILTERIMPRESSIONCOUNTINGMETHOD,
        PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER,
        PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERINTEGRATIONCODE,
        PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERSTATUS,
        PathQueryOptionsFilter_Filter_FILTERINTEREST,
        PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEGROUP,
        PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEGROUPID,
        PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEID,
        PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCENAME,
        PathQueryOptionsFilter_Filter_FILTERLIFEEVENT,
        PathQueryOptionsFilter_Filter_FILTERLIFEEVENTS,
        PathQueryOptionsFilter_Filter_FILTERLINEITEMINTEGRATIONCODE,
        PathQueryOptionsFilter_Filter_FILTERLINEITEMNAME,
        PathQueryOptionsFilter_Filter_FILTERLINEITEMSTATUS,
        PathQueryOptionsFilter_Filter_FILTERMATCHRATIO,
        PathQueryOptionsFilter_Filter_FILTERMEASUREMENTSOURCE,
        PathQueryOptionsFilter_Filter_FILTERMEDIAPLANNAME,
        PathQueryOptionsFilter_Filter_FILTERPARENTALSTATUS,
        PathQueryOptionsFilter_Filter_FILTERPLACEMENTALLYOUTUBECHANNELS,
        PathQueryOptionsFilter_Filter_FILTERPLATFORM,
        PathQueryOptionsFilter_Filter_FILTERPLAYBACKMETHOD,
        PathQueryOptionsFilter_Filter_FILTERPOSITIONINCONTENT,
        PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTY,
        PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYID,
        PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYSECTION,
        PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYSECTIONID,
        PathQueryOptionsFilter_Filter_FILTERREFUNDREASON,
        PathQueryOptionsFilter_Filter_FILTERREMARKETINGLIST,
        PathQueryOptionsFilter_Filter_FILTERREWARDED,
        PathQueryOptionsFilter_Filter_FILTERSENSITIVECATEGORY,
        PathQueryOptionsFilter_Filter_FILTERSERVEDPIXELDENSITY,
        PathQueryOptionsFilter_Filter_FILTERTARGETEDDATAPROVIDERS,
        PathQueryOptionsFilter_Filter_FILTERTHIRDPARTYAUDIENCELISTCOST,
        PathQueryOptionsFilter_Filter_FILTERTHIRDPARTYAUDIENCELISTTYPE,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWAD,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUP,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWHOUSEHOLDINCOME,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCOUNTRYNAME,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREMARKETINGLISTNAME,
        PathQueryOptionsFilter_Filter_FILTERVARIANTID,
        PathQueryOptionsFilter_Filter_FILTERVARIANTNAME,
        PathQueryOptionsFilter_Filter_FILTERVARIANTVERSION,
        PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZE,
        PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPOSITION,
        PathQueryOptionsFilter_Filter_FILTERVIDEOCOMPANIONCREATIVESIZE,
        PathQueryOptionsFilter_Filter_FILTERVIDEOCONTINUOUSPLAY,
        PathQueryOptionsFilter_Filter_FILTERVIDEODURATION,
        PathQueryOptionsFilter_Filter_FILTERYOUTUBEADAPTEDAUDIENCELIST,
        PathQueryOptionsFilter_Filter_FILTERYOUTUBEADVIDEO,
        PathQueryOptionsFilter_Filter_FILTERYOUTUBEADVIDEOID,
        PathQueryOptionsFilter_Filter_FILTERYOUTUBECHANNEL,
        PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER,
        PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER,
        PathQueryOptionsFilter_Filter_FILTERYOUTUBEVIDEO,
        PathQueryOptionsFilter_Filter_FILTERZIPPOSTALCODE,
        PathQueryOptionsFilter_Filter_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPLACEMENTID,
        PathQueryOptionsFilter_Filter_FILTERPATHPATTERNID,
        PathQueryOptionsFilter_Filter_FILTERPATHEVENTINDEX,
        PathQueryOptionsFilter_Filter_FILTEREVENTTYPE,
        PathQueryOptionsFilter_Filter_FILTERCHANNELGROUPING,
        PathQueryOptionsFilter_Filter_FILTEROMSDKAVAILABLE,
        PathQueryOptionsFilter_Filter_FILTERDATASOURCE,
        PathQueryOptionsFilter_Filter_FILTERCM360PLACEMENTID,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCLICKTYPENAME,
        PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADTYPENAME,
        PathQueryOptionsFilter_Filter_FILTERVIDEOCONTENTDURATION,
        PathQueryOptionsFilter_Filter_FILTERMATCHEDGENRETARGET,
        PathQueryOptionsFilter_Filter_FILTERVIDEOCONTENTLIVESTREAM,
        PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTTYPE,
        PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTBUDGET,
        PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTSTARTDATE,
        PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTENDDATE,
        PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTPACINGPERCENTAGE,
        PathQueryOptionsFilter_Filter_FILTERLINEITEMBUDGET,
        PathQueryOptionsFilter_Filter_FILTERLINEITEMSTARTDATE,
        PathQueryOptionsFilter_Filter_FILTERLINEITEMENDDATE,
        PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERGOALTYPE,
        PathQueryOptionsFilter_Filter_FILTERLINEITEMPACINGPERCENTAGE,
        PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERGOALVALUE,
        PathQueryOptionsFilter_Filter_FILTEROMIDCAPABLE,
        PathQueryOptionsFilter_Filter_FILTERVENDORMEASUREMENTMODE,
        PathQueryOptionsFilter_Filter_FILTERIMPRESSIONLOSSREJECTIONREASON,
        PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZESTART,
        PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE,
        PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT,
        PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE,
        PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE,
        PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEORESIZED,
        PathQueryOptionsFilter_Filter_FILTERVERIFICATIONAUDIBILITYSTART,
        PathQueryOptionsFilter_Filter_FILTERVERIFICATIONAUDIBILITYCOMPLETE,
        PathQueryOptionsFilter_Filter_FILTERMEDIATYPE,
        PathQueryOptionsFilter_Filter_FILTERAUDIOFEEDTYPENAME,
        ..
      ),

    -- * PathQueryOptionsFilter_Match
    PathQueryOptionsFilter_Match
      (
        PathQueryOptionsFilter_Match_Unknown,
        PathQueryOptionsFilter_Match_Exact,
        PathQueryOptionsFilter_Match_Partial,
        PathQueryOptionsFilter_Match_BEGINSWITH,
        PathQueryOptionsFilter_Match_WILDCARDEXPRESSION,
        ..
      ),

    -- * QueryMetadata_DataRange
    QueryMetadata_DataRange
      (
        QueryMetadata_DataRange_CUSTOMDATES,
        QueryMetadata_DataRange_CURRENTDAY,
        QueryMetadata_DataRange_PREVIOUSDAY,
        QueryMetadata_DataRange_WEEKTODATE,
        QueryMetadata_DataRange_MONTHTODATE,
        QueryMetadata_DataRange_QUARTERTODATE,
        QueryMetadata_DataRange_YEARTODATE,
        QueryMetadata_DataRange_PREVIOUSWEEK,
        QueryMetadata_DataRange_PREVIOUSHALFMONTH,
        QueryMetadata_DataRange_PREVIOUSMONTH,
        QueryMetadata_DataRange_PREVIOUSQUARTER,
        QueryMetadata_DataRange_PREVIOUSYEAR,
        QueryMetadata_DataRange_LAST7DAYS,
        QueryMetadata_DataRange_LAST30DAYS,
        QueryMetadata_DataRange_LAST90DAYS,
        QueryMetadata_DataRange_LAST365DAYS,
        QueryMetadata_DataRange_ALLTIME,
        QueryMetadata_DataRange_LAST14DAYS,
        QueryMetadata_DataRange_TYPENOTSUPPORTED,
        QueryMetadata_DataRange_LAST60DAYS,
        ..
      ),

    -- * QueryMetadata_Format
    QueryMetadata_Format
      (
        QueryMetadata_Format_Csv,
        QueryMetadata_Format_EXCELCSV,
        QueryMetadata_Format_Xlsx,
        ..
      ),

    -- * QuerySchedule_Frequency
    QuerySchedule_Frequency
      (
        QuerySchedule_Frequency_ONETIME,
        QuerySchedule_Frequency_Daily,
        QuerySchedule_Frequency_Weekly,
        QuerySchedule_Frequency_SEMIMONTHLY,
        QuerySchedule_Frequency_Monthly,
        QuerySchedule_Frequency_Quarterly,
        QuerySchedule_Frequency_Yearly,
        ..
      ),

    -- * ReportFailure_ErrorCode
    ReportFailure_ErrorCode
      (
        ReportFailure_ErrorCode_AUTHENTICATIONERROR,
        ReportFailure_ErrorCode_UNAUTHORIZEDAPIACCESS,
        ReportFailure_ErrorCode_SERVERERROR,
        ReportFailure_ErrorCode_VALIDATIONERROR,
        ReportFailure_ErrorCode_REPORTINGFATALERROR,
        ReportFailure_ErrorCode_REPORTINGTRANSIENTERROR,
        ReportFailure_ErrorCode_REPORTINGIMCOMPATIBLEMETRICS,
        ReportFailure_ErrorCode_REPORTINGILLEGALFILENAME,
        ReportFailure_ErrorCode_REPORTINGQUERYNOTFOUND,
        ReportFailure_ErrorCode_REPORTINGBUCKETNOTFOUND,
        ReportFailure_ErrorCode_REPORTINGCREATEBUCKETFAILED,
        ReportFailure_ErrorCode_REPORTINGDELETEBUCKETFAILED,
        ReportFailure_ErrorCode_REPORTINGUPDATEBUCKETPERMISSIONFAILED,
        ReportFailure_ErrorCode_REPORTINGWRITEBUCKETOBJECTFAILED,
        ReportFailure_ErrorCode_DEPRECATEDREPORTINGINVALIDQUERY,
        ReportFailure_ErrorCode_REPORTINGINVALIDQUERYTOOMANYUNFILTEREDLARGEGROUPBYS,
        ReportFailure_ErrorCode_REPORTINGINVALIDQUERYTITLEMISSING,
        ReportFailure_ErrorCode_REPORTINGINVALIDQUERYMISSINGPARTNERANDADVERTISERFILTERS,
        ..
      ),

    -- * ReportStatus_Format
    ReportStatus_Format
      (
        ReportStatus_Format_Csv,
        ReportStatus_Format_EXCELCSV,
        ReportStatus_Format_Xlsx,
        ..
      ),

    -- * ReportStatus_State
    ReportStatus_State
      (
        ReportStatus_State_Running,
        ReportStatus_State_Done,
        ReportStatus_State_Failed,
        ..
      ),

    -- * RunQueryRequest_DataRange
    RunQueryRequest_DataRange
      (
        RunQueryRequest_DataRange_CUSTOMDATES,
        RunQueryRequest_DataRange_CURRENTDAY,
        RunQueryRequest_DataRange_PREVIOUSDAY,
        RunQueryRequest_DataRange_WEEKTODATE,
        RunQueryRequest_DataRange_MONTHTODATE,
        RunQueryRequest_DataRange_QUARTERTODATE,
        RunQueryRequest_DataRange_YEARTODATE,
        RunQueryRequest_DataRange_PREVIOUSWEEK,
        RunQueryRequest_DataRange_PREVIOUSHALFMONTH,
        RunQueryRequest_DataRange_PREVIOUSMONTH,
        RunQueryRequest_DataRange_PREVIOUSQUARTER,
        RunQueryRequest_DataRange_PREVIOUSYEAR,
        RunQueryRequest_DataRange_LAST7DAYS,
        RunQueryRequest_DataRange_LAST30DAYS,
        RunQueryRequest_DataRange_LAST90DAYS,
        RunQueryRequest_DataRange_LAST365DAYS,
        RunQueryRequest_DataRange_ALLTIME,
        RunQueryRequest_DataRange_LAST14DAYS,
        RunQueryRequest_DataRange_TYPENOTSUPPORTED,
        RunQueryRequest_DataRange_LAST60DAYS,
        ..
      ),
  ) where

import qualified Gogol.Prelude as Core

-- | V1 error format.
newtype Xgafv = Xgafv { fromXgafv :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | v1 error format
pattern Xgafv_1 :: Xgafv
pattern Xgafv_1 = Xgafv "1"

-- | v2 error format
pattern Xgafv_2 :: Xgafv
pattern Xgafv_2 = Xgafv "2"

{-# COMPLETE
  Xgafv_1,
  Xgafv_2,
  Xgafv #-}

-- | Filter type.
newtype FilterPair_Type = FilterPair_Type { fromFilterPair_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern FilterPair_Type_FILTERUNKNOWN :: FilterPair_Type
pattern FilterPair_Type_FILTERUNKNOWN = FilterPair_Type "FILTER_UNKNOWN"

-- | 
pattern FilterPair_Type_FILTERDATE :: FilterPair_Type
pattern FilterPair_Type_FILTERDATE = FilterPair_Type "FILTER_DATE"

-- | 
pattern FilterPair_Type_FILTERDAYOFWEEK :: FilterPair_Type
pattern FilterPair_Type_FILTERDAYOFWEEK = FilterPair_Type "FILTER_DAY_OF_WEEK"

-- | 
pattern FilterPair_Type_FILTERWEEK :: FilterPair_Type
pattern FilterPair_Type_FILTERWEEK = FilterPair_Type "FILTER_WEEK"

-- | 
pattern FilterPair_Type_FILTERMONTH :: FilterPair_Type
pattern FilterPair_Type_FILTERMONTH = FilterPair_Type "FILTER_MONTH"

-- | 
pattern FilterPair_Type_FILTERYEAR :: FilterPair_Type
pattern FilterPair_Type_FILTERYEAR = FilterPair_Type "FILTER_YEAR"

-- | 
pattern FilterPair_Type_FILTERTIMEOFDAY :: FilterPair_Type
pattern FilterPair_Type_FILTERTIMEOFDAY = FilterPair_Type "FILTER_TIME_OF_DAY"

-- | 
pattern FilterPair_Type_FILTERCONVERSIONDELAY :: FilterPair_Type
pattern FilterPair_Type_FILTERCONVERSIONDELAY = FilterPair_Type "FILTER_CONVERSION_DELAY"

-- | 
pattern FilterPair_Type_FILTERCREATIVEID :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVEID = FilterPair_Type "FILTER_CREATIVE_ID"

-- | 
pattern FilterPair_Type_FILTERCREATIVESIZE :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVESIZE = FilterPair_Type "FILTER_CREATIVE_SIZE"

-- | 
pattern FilterPair_Type_FILTERCREATIVETYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVETYPE = FilterPair_Type "FILTER_CREATIVE_TYPE"

-- | 
pattern FilterPair_Type_FILTEREXCHANGEID :: FilterPair_Type
pattern FilterPair_Type_FILTEREXCHANGEID = FilterPair_Type "FILTER_EXCHANGE_ID"

-- | 
pattern FilterPair_Type_FILTERADPOSITION :: FilterPair_Type
pattern FilterPair_Type_FILTERADPOSITION = FilterPair_Type "FILTER_AD_POSITION"

-- | 
pattern FilterPair_Type_FILTERPUBLICINVENTORY :: FilterPair_Type
pattern FilterPair_Type_FILTERPUBLICINVENTORY = FilterPair_Type "FILTER_PUBLIC_INVENTORY"

-- | 
pattern FilterPair_Type_FILTERINVENTORYSOURCE :: FilterPair_Type
pattern FilterPair_Type_FILTERINVENTORYSOURCE = FilterPair_Type "FILTER_INVENTORY_SOURCE"

-- | 
pattern FilterPair_Type_FILTERCITY :: FilterPair_Type
pattern FilterPair_Type_FILTERCITY = FilterPair_Type "FILTER_CITY"

-- | 
pattern FilterPair_Type_FILTERREGION :: FilterPair_Type
pattern FilterPair_Type_FILTERREGION = FilterPair_Type "FILTER_REGION"

-- | 
pattern FilterPair_Type_FILTERDMA :: FilterPair_Type
pattern FilterPair_Type_FILTERDMA = FilterPair_Type "FILTER_DMA"

-- | 
pattern FilterPair_Type_FILTERCOUNTRY :: FilterPair_Type
pattern FilterPair_Type_FILTERCOUNTRY = FilterPair_Type "FILTER_COUNTRY"

-- | 
pattern FilterPair_Type_FILTERSITEID :: FilterPair_Type
pattern FilterPair_Type_FILTERSITEID = FilterPair_Type "FILTER_SITE_ID"

-- | 
pattern FilterPair_Type_FILTERCHANNELID :: FilterPair_Type
pattern FilterPair_Type_FILTERCHANNELID = FilterPair_Type "FILTER_CHANNEL_ID"

-- | 
pattern FilterPair_Type_FILTERPARTNER :: FilterPair_Type
pattern FilterPair_Type_FILTERPARTNER = FilterPair_Type "FILTER_PARTNER"

-- | 
pattern FilterPair_Type_FILTERADVERTISER :: FilterPair_Type
pattern FilterPair_Type_FILTERADVERTISER = FilterPair_Type "FILTER_ADVERTISER"

-- | 
pattern FilterPair_Type_FILTERINSERTIONORDER :: FilterPair_Type
pattern FilterPair_Type_FILTERINSERTIONORDER = FilterPair_Type "FILTER_INSERTION_ORDER"

-- | 
pattern FilterPair_Type_FILTERLINEITEM :: FilterPair_Type
pattern FilterPair_Type_FILTERLINEITEM = FilterPair_Type "FILTER_LINE_ITEM"

-- | 
pattern FilterPair_Type_FILTERPARTNERCURRENCY :: FilterPair_Type
pattern FilterPair_Type_FILTERPARTNERCURRENCY = FilterPair_Type "FILTER_PARTNER_CURRENCY"

-- | 
pattern FilterPair_Type_FILTERADVERTISERCURRENCY :: FilterPair_Type
pattern FilterPair_Type_FILTERADVERTISERCURRENCY = FilterPair_Type "FILTER_ADVERTISER_CURRENCY"

-- | 
pattern FilterPair_Type_FILTERADVERTISERTIMEZONE :: FilterPair_Type
pattern FilterPair_Type_FILTERADVERTISERTIMEZONE = FilterPair_Type "FILTER_ADVERTISER_TIMEZONE"

-- | 
pattern FilterPair_Type_FILTERLINEITEMTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERLINEITEMTYPE = FilterPair_Type "FILTER_LINE_ITEM_TYPE"

-- | 
pattern FilterPair_Type_FILTERUSERLIST :: FilterPair_Type
pattern FilterPair_Type_FILTERUSERLIST = FilterPair_Type "FILTER_USER_LIST"

-- | 
pattern FilterPair_Type_FILTERUSERLISTFIRSTPARTY :: FilterPair_Type
pattern FilterPair_Type_FILTERUSERLISTFIRSTPARTY = FilterPair_Type "FILTER_USER_LIST_FIRST_PARTY"

-- | 
pattern FilterPair_Type_FILTERUSERLISTTHIRDPARTY :: FilterPair_Type
pattern FilterPair_Type_FILTERUSERLISTTHIRDPARTY = FilterPair_Type "FILTER_USER_LIST_THIRD_PARTY"

-- | 
pattern FilterPair_Type_FILTERTARGETEDUSERLIST :: FilterPair_Type
pattern FilterPair_Type_FILTERTARGETEDUSERLIST = FilterPair_Type "FILTER_TARGETED_USER_LIST"

-- | 
pattern FilterPair_Type_FILTERDATAPROVIDER :: FilterPair_Type
pattern FilterPair_Type_FILTERDATAPROVIDER = FilterPair_Type "FILTER_DATA_PROVIDER"

-- | 
pattern FilterPair_Type_FILTERORDERID :: FilterPair_Type
pattern FilterPair_Type_FILTERORDERID = FilterPair_Type "FILTER_ORDER_ID"

-- | 
pattern FilterPair_Type_FILTERVIDEOPLAYERSIZE :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEOPLAYERSIZE = FilterPair_Type "FILTER_VIDEO_PLAYER_SIZE"

-- | 
pattern FilterPair_Type_FILTERVIDEODURATIONSECONDS :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEODURATIONSECONDS = FilterPair_Type "FILTER_VIDEO_DURATION_SECONDS"

-- | 
pattern FilterPair_Type_FILTERKEYWORD :: FilterPair_Type
pattern FilterPair_Type_FILTERKEYWORD = FilterPair_Type "FILTER_KEYWORD"

-- | 
pattern FilterPair_Type_FILTERPAGECATEGORY :: FilterPair_Type
pattern FilterPair_Type_FILTERPAGECATEGORY = FilterPair_Type "FILTER_PAGE_CATEGORY"

-- | 
pattern FilterPair_Type_FILTERCAMPAIGNDAILYFREQUENCY :: FilterPair_Type
pattern FilterPair_Type_FILTERCAMPAIGNDAILYFREQUENCY = FilterPair_Type "FILTER_CAMPAIGN_DAILY_FREQUENCY"

-- | 
pattern FilterPair_Type_FILTERLINEITEMDAILYFREQUENCY :: FilterPair_Type
pattern FilterPair_Type_FILTERLINEITEMDAILYFREQUENCY = FilterPair_Type "FILTER_LINE_ITEM_DAILY_FREQUENCY"

-- | 
pattern FilterPair_Type_FILTERLINEITEMLIFETIMEFREQUENCY :: FilterPair_Type
pattern FilterPair_Type_FILTERLINEITEMLIFETIMEFREQUENCY = FilterPair_Type "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"

-- | 
pattern FilterPair_Type_FILTEROS :: FilterPair_Type
pattern FilterPair_Type_FILTEROS = FilterPair_Type "FILTER_OS"

-- | 
pattern FilterPair_Type_FILTERBROWSER :: FilterPair_Type
pattern FilterPair_Type_FILTERBROWSER = FilterPair_Type "FILTER_BROWSER"

-- | 
pattern FilterPair_Type_FILTERCARRIER :: FilterPair_Type
pattern FilterPair_Type_FILTERCARRIER = FilterPair_Type "FILTER_CARRIER"

-- | 
pattern FilterPair_Type_FILTERSITELANGUAGE :: FilterPair_Type
pattern FilterPair_Type_FILTERSITELANGUAGE = FilterPair_Type "FILTER_SITE_LANGUAGE"

-- | 
pattern FilterPair_Type_FILTERINVENTORYFORMAT :: FilterPair_Type
pattern FilterPair_Type_FILTERINVENTORYFORMAT = FilterPair_Type "FILTER_INVENTORY_FORMAT"

-- | 
pattern FilterPair_Type_FILTERZIPCODE :: FilterPair_Type
pattern FilterPair_Type_FILTERZIPCODE = FilterPair_Type "FILTER_ZIP_CODE"

-- | 
pattern FilterPair_Type_FILTERVIDEORATINGTIER :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEORATINGTIER = FilterPair_Type "FILTER_VIDEO_RATING_TIER"

-- | 
pattern FilterPair_Type_FILTERVIDEOFORMATSUPPORT :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEOFORMATSUPPORT = FilterPair_Type "FILTER_VIDEO_FORMAT_SUPPORT"

-- | 
pattern FilterPair_Type_FILTERVIDEOSKIPPABLESUPPORT :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEOSKIPPABLESUPPORT = FilterPair_Type "FILTER_VIDEO_SKIPPABLE_SUPPORT"

-- | 
pattern FilterPair_Type_FILTERVIDEOCREATIVEDURATION :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEOCREATIVEDURATION = FilterPair_Type "FILTER_VIDEO_CREATIVE_DURATION"

-- | 
pattern FilterPair_Type_FILTERPAGELAYOUT :: FilterPair_Type
pattern FilterPair_Type_FILTERPAGELAYOUT = FilterPair_Type "FILTER_PAGE_LAYOUT"

-- | 
pattern FilterPair_Type_FILTERVIDEOADPOSITIONINSTREAM :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEOADPOSITIONINSTREAM = FilterPair_Type "FILTER_VIDEO_AD_POSITION_IN_STREAM"

-- | 
pattern FilterPair_Type_FILTERAGE :: FilterPair_Type
pattern FilterPair_Type_FILTERAGE = FilterPair_Type "FILTER_AGE"

-- | 
pattern FilterPair_Type_FILTERGENDER :: FilterPair_Type
pattern FilterPair_Type_FILTERGENDER = FilterPair_Type "FILTER_GENDER"

-- | 
pattern FilterPair_Type_FILTERQUARTER :: FilterPair_Type
pattern FilterPair_Type_FILTERQUARTER = FilterPair_Type "FILTER_QUARTER"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWCONVERSIONTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWCONVERSIONTYPE = FilterPair_Type "FILTER_TRUEVIEW_CONVERSION_TYPE"

-- | 
pattern FilterPair_Type_FILTERMOBILEGEO :: FilterPair_Type
pattern FilterPair_Type_FILTERMOBILEGEO = FilterPair_Type "FILTER_MOBILE_GEO"

-- | 
pattern FilterPair_Type_FILTERMRAIDSUPPORT :: FilterPair_Type
pattern FilterPair_Type_FILTERMRAIDSUPPORT = FilterPair_Type "FILTER_MRAID_SUPPORT"

-- | 
pattern FilterPair_Type_FILTERACTIVEVIEWEXPECTEDVIEWABILITY :: FilterPair_Type
pattern FilterPair_Type_FILTERACTIVEVIEWEXPECTEDVIEWABILITY = FilterPair_Type "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"

-- | 
pattern FilterPair_Type_FILTERVIDEOCREATIVEDURATIONSKIPPABLE :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEOCREATIVEDURATIONSKIPPABLE = FilterPair_Type "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"

-- | 
pattern FilterPair_Type_FILTERNIELSENCOUNTRYCODE :: FilterPair_Type
pattern FilterPair_Type_FILTERNIELSENCOUNTRYCODE = FilterPair_Type "FILTER_NIELSEN_COUNTRY_CODE"

-- | 
pattern FilterPair_Type_FILTERNIELSENDEVICEID :: FilterPair_Type
pattern FilterPair_Type_FILTERNIELSENDEVICEID = FilterPair_Type "FILTER_NIELSEN_DEVICE_ID"

-- | 
pattern FilterPair_Type_FILTERNIELSENGENDER :: FilterPair_Type
pattern FilterPair_Type_FILTERNIELSENGENDER = FilterPair_Type "FILTER_NIELSEN_GENDER"

-- | 
pattern FilterPair_Type_FILTERNIELSENAGE :: FilterPair_Type
pattern FilterPair_Type_FILTERNIELSENAGE = FilterPair_Type "FILTER_NIELSEN_AGE"

-- | 
pattern FilterPair_Type_FILTERINVENTORYSOURCETYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERINVENTORYSOURCETYPE = FilterPair_Type "FILTER_INVENTORY_SOURCE_TYPE"

-- | 
pattern FilterPair_Type_FILTERCREATIVEWIDTH :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVEWIDTH = FilterPair_Type "FILTER_CREATIVE_WIDTH"

-- | 
pattern FilterPair_Type_FILTERCREATIVEHEIGHT :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVEHEIGHT = FilterPair_Type "FILTER_CREATIVE_HEIGHT"

-- | 
pattern FilterPair_Type_FILTERDFPORDERID :: FilterPair_Type
pattern FilterPair_Type_FILTERDFPORDERID = FilterPair_Type "FILTER_DFP_ORDER_ID"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWAGE :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWAGE = FilterPair_Type "FILTER_TRUEVIEW_AGE"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWGENDER :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWGENDER = FilterPair_Type "FILTER_TRUEVIEW_GENDER"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWPARENTALSTATUS :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWPARENTALSTATUS = FilterPair_Type "FILTER_TRUEVIEW_PARENTAL_STATUS"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWREMARKETINGLIST :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWREMARKETINGLIST = FilterPair_Type "FILTER_TRUEVIEW_REMARKETING_LIST"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWINTEREST :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWINTEREST = FilterPair_Type "FILTER_TRUEVIEW_INTEREST"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWADGROUPID :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWADGROUPID = FilterPair_Type "FILTER_TRUEVIEW_AD_GROUP_ID"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWADGROUPADID :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWADGROUPADID = FilterPair_Type "FILTER_TRUEVIEW_AD_GROUP_AD_ID"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARLANGUAGE :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARLANGUAGE = FilterPair_Type "FILTER_TRUEVIEW_IAR_LANGUAGE"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARGENDER :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARGENDER = FilterPair_Type "FILTER_TRUEVIEW_IAR_GENDER"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARAGE :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARAGE = FilterPair_Type "FILTER_TRUEVIEW_IAR_AGE"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARCATEGORY :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARCATEGORY = FilterPair_Type "FILTER_TRUEVIEW_IAR_CATEGORY"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARCOUNTRY :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARCOUNTRY = FilterPair_Type "FILTER_TRUEVIEW_IAR_COUNTRY"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARCITY :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARCITY = FilterPair_Type "FILTER_TRUEVIEW_IAR_CITY"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARREGION :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARREGION = FilterPair_Type "FILTER_TRUEVIEW_IAR_REGION"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARZIPCODE :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARZIPCODE = FilterPair_Type "FILTER_TRUEVIEW_IAR_ZIPCODE"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARREMARKETINGLIST :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARREMARKETINGLIST = FilterPair_Type "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARINTEREST :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARINTEREST = FilterPair_Type "FILTER_TRUEVIEW_IAR_INTEREST"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARPARENTALSTATUS :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARPARENTALSTATUS = FilterPair_Type "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARTIMEOFDAY :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARTIMEOFDAY = FilterPair_Type "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWCUSTOMAFFINITY :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWCUSTOMAFFINITY = FilterPair_Type "FILTER_TRUEVIEW_CUSTOM_AFFINITY"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWCATEGORY :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWCATEGORY = FilterPair_Type "FILTER_TRUEVIEW_CATEGORY"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWKEYWORD :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWKEYWORD = FilterPair_Type "FILTER_TRUEVIEW_KEYWORD"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWPLACEMENT :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWPLACEMENT = FilterPair_Type "FILTER_TRUEVIEW_PLACEMENT"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWURL :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWURL = FilterPair_Type "FILTER_TRUEVIEW_URL"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWCOUNTRY :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWCOUNTRY = FilterPair_Type "FILTER_TRUEVIEW_COUNTRY"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWREGION :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWREGION = FilterPair_Type "FILTER_TRUEVIEW_REGION"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWCITY :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWCITY = FilterPair_Type "FILTER_TRUEVIEW_CITY"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWDMA :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWDMA = FilterPair_Type "FILTER_TRUEVIEW_DMA"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWZIPCODE :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWZIPCODE = FilterPair_Type "FILTER_TRUEVIEW_ZIPCODE"

-- | 
pattern FilterPair_Type_FILTERNOTSUPPORTED :: FilterPair_Type
pattern FilterPair_Type_FILTERNOTSUPPORTED = FilterPair_Type "FILTER_NOT_SUPPORTED"

-- | 
pattern FilterPair_Type_FILTERMEDIAPLAN :: FilterPair_Type
pattern FilterPair_Type_FILTERMEDIAPLAN = FilterPair_Type "FILTER_MEDIA_PLAN"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARYOUTUBECHANNEL :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARYOUTUBECHANNEL = FilterPair_Type "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARYOUTUBEVIDEO :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARYOUTUBEVIDEO = FilterPair_Type "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"

-- | 
pattern FilterPair_Type_FILTERSKIPPABLESUPPORT :: FilterPair_Type
pattern FilterPair_Type_FILTERSKIPPABLESUPPORT = FilterPair_Type "FILTER_SKIPPABLE_SUPPORT"

-- | 
pattern FilterPair_Type_FILTERCOMPANIONCREATIVEID :: FilterPair_Type
pattern FilterPair_Type_FILTERCOMPANIONCREATIVEID = FilterPair_Type "FILTER_COMPANION_CREATIVE_ID"

-- | 
pattern FilterPair_Type_FILTERBUDGETSEGMENTDESCRIPTION :: FilterPair_Type
pattern FilterPair_Type_FILTERBUDGETSEGMENTDESCRIPTION = FilterPair_Type "FILTER_BUDGET_SEGMENT_DESCRIPTION"

-- | 
pattern FilterPair_Type_FILTERFLOODLIGHTACTIVITYID :: FilterPair_Type
pattern FilterPair_Type_FILTERFLOODLIGHTACTIVITYID = FilterPair_Type "FILTER_FLOODLIGHT_ACTIVITY_ID"

-- | 
pattern FilterPair_Type_FILTERDEVICEMODEL :: FilterPair_Type
pattern FilterPair_Type_FILTERDEVICEMODEL = FilterPair_Type "FILTER_DEVICE_MODEL"

-- | 
pattern FilterPair_Type_FILTERDEVICEMAKE :: FilterPair_Type
pattern FilterPair_Type_FILTERDEVICEMAKE = FilterPair_Type "FILTER_DEVICE_MAKE"

-- | 
pattern FilterPair_Type_FILTERDEVICETYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERDEVICETYPE = FilterPair_Type "FILTER_DEVICE_TYPE"

-- | 
pattern FilterPair_Type_FILTERCREATIVEATTRIBUTE :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVEATTRIBUTE = FilterPair_Type "FILTER_CREATIVE_ATTRIBUTE"

-- | 
pattern FilterPair_Type_FILTERINVENTORYCOMMITMENTTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERINVENTORYCOMMITMENTTYPE = FilterPair_Type "FILTER_INVENTORY_COMMITMENT_TYPE"

-- | 
pattern FilterPair_Type_FILTERINVENTORYRATETYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERINVENTORYRATETYPE = FilterPair_Type "FILTER_INVENTORY_RATE_TYPE"

-- | 
pattern FilterPair_Type_FILTERINVENTORYDELIVERYMETHOD :: FilterPair_Type
pattern FilterPair_Type_FILTERINVENTORYDELIVERYMETHOD = FilterPair_Type "FILTER_INVENTORY_DELIVERY_METHOD"

-- | 
pattern FilterPair_Type_FILTERINVENTORYSOURCEEXTERNALID :: FilterPair_Type
pattern FilterPair_Type_FILTERINVENTORYSOURCEEXTERNALID = FilterPair_Type "FILTER_INVENTORY_SOURCE_EXTERNAL_ID"

-- | 
pattern FilterPair_Type_FILTERAUTHORIZEDSELLERSTATE :: FilterPair_Type
pattern FilterPair_Type_FILTERAUTHORIZEDSELLERSTATE = FilterPair_Type "FILTER_AUTHORIZED_SELLER_STATE"

-- | 
pattern FilterPair_Type_FILTERVIDEODURATIONSECONDSRANGE :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEODURATIONSECONDSRANGE = FilterPair_Type "FILTER_VIDEO_DURATION_SECONDS_RANGE"

-- | 
pattern FilterPair_Type_FILTERPARTNERNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERPARTNERNAME = FilterPair_Type "FILTER_PARTNER_NAME"

-- | 
pattern FilterPair_Type_FILTERPARTNERSTATUS :: FilterPair_Type
pattern FilterPair_Type_FILTERPARTNERSTATUS = FilterPair_Type "FILTER_PARTNER_STATUS"

-- | 
pattern FilterPair_Type_FILTERADVERTISERNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERADVERTISERNAME = FilterPair_Type "FILTER_ADVERTISER_NAME"

-- | 
pattern FilterPair_Type_FILTERADVERTISERINTEGRATIONCODE :: FilterPair_Type
pattern FilterPair_Type_FILTERADVERTISERINTEGRATIONCODE = FilterPair_Type "FILTER_ADVERTISER_INTEGRATION_CODE"

-- | 
pattern FilterPair_Type_FILTERADVERTISERINTEGRATIONSTATUS :: FilterPair_Type
pattern FilterPair_Type_FILTERADVERTISERINTEGRATIONSTATUS = FilterPair_Type "FILTER_ADVERTISER_INTEGRATION_STATUS"

-- | 
pattern FilterPair_Type_FILTERCARRIERNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERCARRIERNAME = FilterPair_Type "FILTER_CARRIER_NAME"

-- | 
pattern FilterPair_Type_FILTERCHANNELNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERCHANNELNAME = FilterPair_Type "FILTER_CHANNEL_NAME"

-- | 
pattern FilterPair_Type_FILTERCITYNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERCITYNAME = FilterPair_Type "FILTER_CITY_NAME"

-- | 
pattern FilterPair_Type_FILTERCOMPANIONCREATIVENAME :: FilterPair_Type
pattern FilterPair_Type_FILTERCOMPANIONCREATIVENAME = FilterPair_Type "FILTER_COMPANION_CREATIVE_NAME"

-- | 
pattern FilterPair_Type_FILTERUSERLISTFIRSTPARTYNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERUSERLISTFIRSTPARTYNAME = FilterPair_Type "FILTER_USER_LIST_FIRST_PARTY_NAME"

-- | 
pattern FilterPair_Type_FILTERUSERLISTTHIRDPARTYNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERUSERLISTTHIRDPARTYNAME = FilterPair_Type "FILTER_USER_LIST_THIRD_PARTY_NAME"

-- | 
pattern FilterPair_Type_FILTERNIELSENRESTATEMENTDATE :: FilterPair_Type
pattern FilterPair_Type_FILTERNIELSENRESTATEMENTDATE = FilterPair_Type "FILTER_NIELSEN_RESTATEMENT_DATE"

-- | 
pattern FilterPair_Type_FILTERNIELSENDATERANGE :: FilterPair_Type
pattern FilterPair_Type_FILTERNIELSENDATERANGE = FilterPair_Type "FILTER_NIELSEN_DATE_RANGE"

-- | 
pattern FilterPair_Type_FILTERINSERTIONORDERNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERINSERTIONORDERNAME = FilterPair_Type "FILTER_INSERTION_ORDER_NAME"

-- | 
pattern FilterPair_Type_FILTERREGIONNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERREGIONNAME = FilterPair_Type "FILTER_REGION_NAME"

-- | 
pattern FilterPair_Type_FILTERDMANAME :: FilterPair_Type
pattern FilterPair_Type_FILTERDMANAME = FilterPair_Type "FILTER_DMA_NAME"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARREGIONNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARREGIONNAME = FilterPair_Type "FILTER_TRUEVIEW_IAR_REGION_NAME"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWDMANAME :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWDMANAME = FilterPair_Type "FILTER_TRUEVIEW_DMA_NAME"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWREGIONNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWREGIONNAME = FilterPair_Type "FILTER_TRUEVIEW_REGION_NAME"

-- | 
pattern FilterPair_Type_FILTERACTIVEVIEWCUSTOMMETRICID :: FilterPair_Type
pattern FilterPair_Type_FILTERACTIVEVIEWCUSTOMMETRICID = FilterPair_Type "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID"

-- | 
pattern FilterPair_Type_FILTERACTIVEVIEWCUSTOMMETRICNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERACTIVEVIEWCUSTOMMETRICNAME = FilterPair_Type "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME"

-- | 
pattern FilterPair_Type_FILTERADTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERADTYPE = FilterPair_Type "FILTER_AD_TYPE"

-- | 
pattern FilterPair_Type_FILTERALGORITHM :: FilterPair_Type
pattern FilterPair_Type_FILTERALGORITHM = FilterPair_Type "FILTER_ALGORITHM"

-- | 
pattern FilterPair_Type_FILTERALGORITHMID :: FilterPair_Type
pattern FilterPair_Type_FILTERALGORITHMID = FilterPair_Type "FILTER_ALGORITHM_ID"

-- | 
pattern FilterPair_Type_FILTERAMPPAGEREQUEST :: FilterPair_Type
pattern FilterPair_Type_FILTERAMPPAGEREQUEST = FilterPair_Type "FILTER_AMP_PAGE_REQUEST"

-- | 
pattern FilterPair_Type_FILTERANONYMOUSINVENTORYMODELING :: FilterPair_Type
pattern FilterPair_Type_FILTERANONYMOUSINVENTORYMODELING = FilterPair_Type "FILTER_ANONYMOUS_INVENTORY_MODELING"

-- | 
pattern FilterPair_Type_FILTERAPPURL :: FilterPair_Type
pattern FilterPair_Type_FILTERAPPURL = FilterPair_Type "FILTER_APP_URL"

-- | 
pattern FilterPair_Type_FILTERAPPURLEXCLUDED :: FilterPair_Type
pattern FilterPair_Type_FILTERAPPURLEXCLUDED = FilterPair_Type "FILTER_APP_URL_EXCLUDED"

-- | 
pattern FilterPair_Type_FILTERATTRIBUTEDUSERLIST :: FilterPair_Type
pattern FilterPair_Type_FILTERATTRIBUTEDUSERLIST = FilterPair_Type "FILTER_ATTRIBUTED_USERLIST"

-- | 
pattern FilterPair_Type_FILTERATTRIBUTEDUSERLISTCOST :: FilterPair_Type
pattern FilterPair_Type_FILTERATTRIBUTEDUSERLISTCOST = FilterPair_Type "FILTER_ATTRIBUTED_USERLIST_COST"

-- | 
pattern FilterPair_Type_FILTERATTRIBUTEDUSERLISTTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERATTRIBUTEDUSERLISTTYPE = FilterPair_Type "FILTER_ATTRIBUTED_USERLIST_TYPE"

-- | 
pattern FilterPair_Type_FILTERATTRIBUTIONMODEL :: FilterPair_Type
pattern FilterPair_Type_FILTERATTRIBUTIONMODEL = FilterPair_Type "FILTER_ATTRIBUTION_MODEL"

-- | 
pattern FilterPair_Type_FILTERAUDIENCELIST :: FilterPair_Type
pattern FilterPair_Type_FILTERAUDIENCELIST = FilterPair_Type "FILTER_AUDIENCE_LIST"

-- | 
pattern FilterPair_Type_FILTERAUDIENCELISTCOST :: FilterPair_Type
pattern FilterPair_Type_FILTERAUDIENCELISTCOST = FilterPair_Type "FILTER_AUDIENCE_LIST_COST"

-- | 
pattern FilterPair_Type_FILTERAUDIENCELISTTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERAUDIENCELISTTYPE = FilterPair_Type "FILTER_AUDIENCE_LIST_TYPE"

-- | 
pattern FilterPair_Type_FILTERAUDIENCENAME :: FilterPair_Type
pattern FilterPair_Type_FILTERAUDIENCENAME = FilterPair_Type "FILTER_AUDIENCE_NAME"

-- | 
pattern FilterPair_Type_FILTERAUDIENCETYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERAUDIENCETYPE = FilterPair_Type "FILTER_AUDIENCE_TYPE"

-- | 
pattern FilterPair_Type_FILTERBILLABLEOUTCOME :: FilterPair_Type
pattern FilterPair_Type_FILTERBILLABLEOUTCOME = FilterPair_Type "FILTER_BILLABLE_OUTCOME"

-- | 
pattern FilterPair_Type_FILTERBRANDLIFTTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERBRANDLIFTTYPE = FilterPair_Type "FILTER_BRAND_LIFT_TYPE"

-- | 
pattern FilterPair_Type_FILTERCHANNELTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERCHANNELTYPE = FilterPair_Type "FILTER_CHANNEL_TYPE"

-- | 
pattern FilterPair_Type_FILTERCMPLACEMENTID :: FilterPair_Type
pattern FilterPair_Type_FILTERCMPLACEMENTID = FilterPair_Type "FILTER_CM_PLACEMENT_ID"

-- | 
pattern FilterPair_Type_FILTERCONVERSIONSOURCE :: FilterPair_Type
pattern FilterPair_Type_FILTERCONVERSIONSOURCE = FilterPair_Type "FILTER_CONVERSION_SOURCE"

-- | 
pattern FilterPair_Type_FILTERCONVERSIONSOURCEID :: FilterPair_Type
pattern FilterPair_Type_FILTERCONVERSIONSOURCEID = FilterPair_Type "FILTER_CONVERSION_SOURCE_ID"

-- | 
pattern FilterPair_Type_FILTERCOUNTRYID :: FilterPair_Type
pattern FilterPair_Type_FILTERCOUNTRYID = FilterPair_Type "FILTER_COUNTRY_ID"

-- | 
pattern FilterPair_Type_FILTERCREATIVE :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVE = FilterPair_Type "FILTER_CREATIVE"

-- | 
pattern FilterPair_Type_FILTERCREATIVEASSET :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVEASSET = FilterPair_Type "FILTER_CREATIVE_ASSET"

-- | 
pattern FilterPair_Type_FILTERCREATIVEINTEGRATIONCODE :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVEINTEGRATIONCODE = FilterPair_Type "FILTER_CREATIVE_INTEGRATION_CODE"

-- | 
pattern FilterPair_Type_FILTERCREATIVERENDEREDINAMP :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVERENDEREDINAMP = FilterPair_Type "FILTER_CREATIVE_RENDERED_IN_AMP"

-- | 
pattern FilterPair_Type_FILTERCREATIVESOURCE :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVESOURCE = FilterPair_Type "FILTER_CREATIVE_SOURCE"

-- | 
pattern FilterPair_Type_FILTERCREATIVESTATUS :: FilterPair_Type
pattern FilterPair_Type_FILTERCREATIVESTATUS = FilterPair_Type "FILTER_CREATIVE_STATUS"

-- | 
pattern FilterPair_Type_FILTERDATAPROVIDERNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERDATAPROVIDERNAME = FilterPair_Type "FILTER_DATA_PROVIDER_NAME"

-- | 
pattern FilterPair_Type_FILTERDETAILEDDEMOGRAPHICS :: FilterPair_Type
pattern FilterPair_Type_FILTERDETAILEDDEMOGRAPHICS = FilterPair_Type "FILTER_DETAILED_DEMOGRAPHICS"

-- | 
pattern FilterPair_Type_FILTERDETAILEDDEMOGRAPHICSID :: FilterPair_Type
pattern FilterPair_Type_FILTERDETAILEDDEMOGRAPHICSID = FilterPair_Type "FILTER_DETAILED_DEMOGRAPHICS_ID"

-- | 
pattern FilterPair_Type_FILTERDEVICE :: FilterPair_Type
pattern FilterPair_Type_FILTERDEVICE = FilterPair_Type "FILTER_DEVICE"

-- | 
pattern FilterPair_Type_FILTERGAMINSERTIONORDER :: FilterPair_Type
pattern FilterPair_Type_FILTERGAMINSERTIONORDER = FilterPair_Type "FILTER_GAM_INSERTION_ORDER"

-- | 
pattern FilterPair_Type_FILTERGAMLINEITEM :: FilterPair_Type
pattern FilterPair_Type_FILTERGAMLINEITEM = FilterPair_Type "FILTER_GAM_LINE_ITEM"

-- | 
pattern FilterPair_Type_FILTERGAMLINEITEMID :: FilterPair_Type
pattern FilterPair_Type_FILTERGAMLINEITEMID = FilterPair_Type "FILTER_GAM_LINE_ITEM_ID"

-- | 
pattern FilterPair_Type_FILTERDIGITALCONTENTLABEL :: FilterPair_Type
pattern FilterPair_Type_FILTERDIGITALCONTENTLABEL = FilterPair_Type "FILTER_DIGITAL_CONTENT_LABEL"

-- | 
pattern FilterPair_Type_FILTERDOMAIN :: FilterPair_Type
pattern FilterPair_Type_FILTERDOMAIN = FilterPair_Type "FILTER_DOMAIN"

-- | 
pattern FilterPair_Type_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST :: FilterPair_Type
pattern FilterPair_Type_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST = FilterPair_Type "FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST"

-- | 
pattern FilterPair_Type_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST :: FilterPair_Type
pattern FilterPair_Type_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST = FilterPair_Type "FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST"

-- | 
pattern FilterPair_Type_FILTEREXCHANGE :: FilterPair_Type
pattern FilterPair_Type_FILTEREXCHANGE = FilterPair_Type "FILTER_EXCHANGE"

-- | 
pattern FilterPair_Type_FILTEREXCHANGECODE :: FilterPair_Type
pattern FilterPair_Type_FILTEREXCHANGECODE = FilterPair_Type "FILTER_EXCHANGE_CODE"

-- | 
pattern FilterPair_Type_FILTEREXTENSION :: FilterPair_Type
pattern FilterPair_Type_FILTEREXTENSION = FilterPair_Type "FILTER_EXTENSION"

-- | 
pattern FilterPair_Type_FILTEREXTENSIONSTATUS :: FilterPair_Type
pattern FilterPair_Type_FILTEREXTENSIONSTATUS = FilterPair_Type "FILTER_EXTENSION_STATUS"

-- | 
pattern FilterPair_Type_FILTEREXTENSIONTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTEREXTENSIONTYPE = FilterPair_Type "FILTER_EXTENSION_TYPE"

-- | 
pattern FilterPair_Type_FILTERFIRSTPARTYAUDIENCELISTCOST :: FilterPair_Type
pattern FilterPair_Type_FILTERFIRSTPARTYAUDIENCELISTCOST = FilterPair_Type "FILTER_FIRST_PARTY_AUDIENCE_LIST_COST"

-- | 
pattern FilterPair_Type_FILTERFIRSTPARTYAUDIENCELISTTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERFIRSTPARTYAUDIENCELISTTYPE = FilterPair_Type "FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE"

-- | 
pattern FilterPair_Type_FILTERFLOODLIGHTACTIVITY :: FilterPair_Type
pattern FilterPair_Type_FILTERFLOODLIGHTACTIVITY = FilterPair_Type "FILTER_FLOODLIGHT_ACTIVITY"

-- | 
pattern FilterPair_Type_FILTERFORMAT :: FilterPair_Type
pattern FilterPair_Type_FILTERFORMAT = FilterPair_Type "FILTER_FORMAT"

-- | 
pattern FilterPair_Type_FILTERGMAILAGE :: FilterPair_Type
pattern FilterPair_Type_FILTERGMAILAGE = FilterPair_Type "FILTER_GMAIL_AGE"

-- | 
pattern FilterPair_Type_FILTERGMAILCITY :: FilterPair_Type
pattern FilterPair_Type_FILTERGMAILCITY = FilterPair_Type "FILTER_GMAIL_CITY"

-- | 
pattern FilterPair_Type_FILTERGMAILCOUNTRY :: FilterPair_Type
pattern FilterPair_Type_FILTERGMAILCOUNTRY = FilterPair_Type "FILTER_GMAIL_COUNTRY"

-- | 
pattern FilterPair_Type_FILTERGMAILCOUNTRYNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERGMAILCOUNTRYNAME = FilterPair_Type "FILTER_GMAIL_COUNTRY_NAME"

-- | 
pattern FilterPair_Type_FILTERGMAILDEVICETYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERGMAILDEVICETYPE = FilterPair_Type "FILTER_GMAIL_DEVICE_TYPE"

-- | 
pattern FilterPair_Type_FILTERGMAILDEVICETYPENAME :: FilterPair_Type
pattern FilterPair_Type_FILTERGMAILDEVICETYPENAME = FilterPair_Type "FILTER_GMAIL_DEVICE_TYPE_NAME"

-- | 
pattern FilterPair_Type_FILTERGMAILGENDER :: FilterPair_Type
pattern FilterPair_Type_FILTERGMAILGENDER = FilterPair_Type "FILTER_GMAIL_GENDER"

-- | 
pattern FilterPair_Type_FILTERGMAILREGION :: FilterPair_Type
pattern FilterPair_Type_FILTERGMAILREGION = FilterPair_Type "FILTER_GMAIL_REGION"

-- | 
pattern FilterPair_Type_FILTERGMAILREMARKETINGLIST :: FilterPair_Type
pattern FilterPair_Type_FILTERGMAILREMARKETINGLIST = FilterPair_Type "FILTER_GMAIL_REMARKETING_LIST"

-- | 
pattern FilterPair_Type_FILTERHOUSEHOLDINCOME :: FilterPair_Type
pattern FilterPair_Type_FILTERHOUSEHOLDINCOME = FilterPair_Type "FILTER_HOUSEHOLD_INCOME"

-- | 
pattern FilterPair_Type_FILTERIMPRESSIONCOUNTINGMETHOD :: FilterPair_Type
pattern FilterPair_Type_FILTERIMPRESSIONCOUNTINGMETHOD = FilterPair_Type "FILTER_IMPRESSION_COUNTING_METHOD"

-- | 
pattern FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER :: FilterPair_Type
pattern FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER = FilterPair_Type "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER"

-- | 
pattern FilterPair_Type_FILTERINSERTIONORDERINTEGRATIONCODE :: FilterPair_Type
pattern FilterPair_Type_FILTERINSERTIONORDERINTEGRATIONCODE = FilterPair_Type "FILTER_INSERTION_ORDER_INTEGRATION_CODE"

-- | 
pattern FilterPair_Type_FILTERINSERTIONORDERSTATUS :: FilterPair_Type
pattern FilterPair_Type_FILTERINSERTIONORDERSTATUS = FilterPair_Type "FILTER_INSERTION_ORDER_STATUS"

-- | 
pattern FilterPair_Type_FILTERINTEREST :: FilterPair_Type
pattern FilterPair_Type_FILTERINTEREST = FilterPair_Type "FILTER_INTEREST"

-- | 
pattern FilterPair_Type_FILTERINVENTORYSOURCEGROUP :: FilterPair_Type
pattern FilterPair_Type_FILTERINVENTORYSOURCEGROUP = FilterPair_Type "FILTER_INVENTORY_SOURCE_GROUP"

-- | 
pattern FilterPair_Type_FILTERINVENTORYSOURCEGROUPID :: FilterPair_Type
pattern FilterPair_Type_FILTERINVENTORYSOURCEGROUPID = FilterPair_Type "FILTER_INVENTORY_SOURCE_GROUP_ID"

-- | 
pattern FilterPair_Type_FILTERINVENTORYSOURCEID :: FilterPair_Type
pattern FilterPair_Type_FILTERINVENTORYSOURCEID = FilterPair_Type "FILTER_INVENTORY_SOURCE_ID"

-- | 
pattern FilterPair_Type_FILTERINVENTORYSOURCENAME :: FilterPair_Type
pattern FilterPair_Type_FILTERINVENTORYSOURCENAME = FilterPair_Type "FILTER_INVENTORY_SOURCE_NAME"

-- | 
pattern FilterPair_Type_FILTERLIFEEVENT :: FilterPair_Type
pattern FilterPair_Type_FILTERLIFEEVENT = FilterPair_Type "FILTER_LIFE_EVENT"

-- | 
pattern FilterPair_Type_FILTERLIFEEVENTS :: FilterPair_Type
pattern FilterPair_Type_FILTERLIFEEVENTS = FilterPair_Type "FILTER_LIFE_EVENTS"

-- | 
pattern FilterPair_Type_FILTERLINEITEMINTEGRATIONCODE :: FilterPair_Type
pattern FilterPair_Type_FILTERLINEITEMINTEGRATIONCODE = FilterPair_Type "FILTER_LINE_ITEM_INTEGRATION_CODE"

-- | 
pattern FilterPair_Type_FILTERLINEITEMNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERLINEITEMNAME = FilterPair_Type "FILTER_LINE_ITEM_NAME"

-- | 
pattern FilterPair_Type_FILTERLINEITEMSTATUS :: FilterPair_Type
pattern FilterPair_Type_FILTERLINEITEMSTATUS = FilterPair_Type "FILTER_LINE_ITEM_STATUS"

-- | 
pattern FilterPair_Type_FILTERMATCHRATIO :: FilterPair_Type
pattern FilterPair_Type_FILTERMATCHRATIO = FilterPair_Type "FILTER_MATCH_RATIO"

-- | 
pattern FilterPair_Type_FILTERMEASUREMENTSOURCE :: FilterPair_Type
pattern FilterPair_Type_FILTERMEASUREMENTSOURCE = FilterPair_Type "FILTER_MEASUREMENT_SOURCE"

-- | 
pattern FilterPair_Type_FILTERMEDIAPLANNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERMEDIAPLANNAME = FilterPair_Type "FILTER_MEDIA_PLAN_NAME"

-- | 
pattern FilterPair_Type_FILTERPARENTALSTATUS :: FilterPair_Type
pattern FilterPair_Type_FILTERPARENTALSTATUS = FilterPair_Type "FILTER_PARENTAL_STATUS"

-- | 
pattern FilterPair_Type_FILTERPLACEMENTALLYOUTUBECHANNELS :: FilterPair_Type
pattern FilterPair_Type_FILTERPLACEMENTALLYOUTUBECHANNELS = FilterPair_Type "FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS"

-- | 
pattern FilterPair_Type_FILTERPLATFORM :: FilterPair_Type
pattern FilterPair_Type_FILTERPLATFORM = FilterPair_Type "FILTER_PLATFORM"

-- | 
pattern FilterPair_Type_FILTERPLAYBACKMETHOD :: FilterPair_Type
pattern FilterPair_Type_FILTERPLAYBACKMETHOD = FilterPair_Type "FILTER_PLAYBACK_METHOD"

-- | 
pattern FilterPair_Type_FILTERPOSITIONINCONTENT :: FilterPair_Type
pattern FilterPair_Type_FILTERPOSITIONINCONTENT = FilterPair_Type "FILTER_POSITION_IN_CONTENT"

-- | 
pattern FilterPair_Type_FILTERPUBLISHERPROPERTY :: FilterPair_Type
pattern FilterPair_Type_FILTERPUBLISHERPROPERTY = FilterPair_Type "FILTER_PUBLISHER_PROPERTY"

-- | 
pattern FilterPair_Type_FILTERPUBLISHERPROPERTYID :: FilterPair_Type
pattern FilterPair_Type_FILTERPUBLISHERPROPERTYID = FilterPair_Type "FILTER_PUBLISHER_PROPERTY_ID"

-- | 
pattern FilterPair_Type_FILTERPUBLISHERPROPERTYSECTION :: FilterPair_Type
pattern FilterPair_Type_FILTERPUBLISHERPROPERTYSECTION = FilterPair_Type "FILTER_PUBLISHER_PROPERTY_SECTION"

-- | 
pattern FilterPair_Type_FILTERPUBLISHERPROPERTYSECTIONID :: FilterPair_Type
pattern FilterPair_Type_FILTERPUBLISHERPROPERTYSECTIONID = FilterPair_Type "FILTER_PUBLISHER_PROPERTY_SECTION_ID"

-- | 
pattern FilterPair_Type_FILTERREFUNDREASON :: FilterPair_Type
pattern FilterPair_Type_FILTERREFUNDREASON = FilterPair_Type "FILTER_REFUND_REASON"

-- | 
pattern FilterPair_Type_FILTERREMARKETINGLIST :: FilterPair_Type
pattern FilterPair_Type_FILTERREMARKETINGLIST = FilterPair_Type "FILTER_REMARKETING_LIST"

-- | 
pattern FilterPair_Type_FILTERREWARDED :: FilterPair_Type
pattern FilterPair_Type_FILTERREWARDED = FilterPair_Type "FILTER_REWARDED"

-- | 
pattern FilterPair_Type_FILTERSENSITIVECATEGORY :: FilterPair_Type
pattern FilterPair_Type_FILTERSENSITIVECATEGORY = FilterPair_Type "FILTER_SENSITIVE_CATEGORY"

-- | 
pattern FilterPair_Type_FILTERSERVEDPIXELDENSITY :: FilterPair_Type
pattern FilterPair_Type_FILTERSERVEDPIXELDENSITY = FilterPair_Type "FILTER_SERVED_PIXEL_DENSITY"

-- | 
pattern FilterPair_Type_FILTERTARGETEDDATAPROVIDERS :: FilterPair_Type
pattern FilterPair_Type_FILTERTARGETEDDATAPROVIDERS = FilterPair_Type "FILTER_TARGETED_DATA_PROVIDERS"

-- | 
pattern FilterPair_Type_FILTERTHIRDPARTYAUDIENCELISTCOST :: FilterPair_Type
pattern FilterPair_Type_FILTERTHIRDPARTYAUDIENCELISTCOST = FilterPair_Type "FILTER_THIRD_PARTY_AUDIENCE_LIST_COST"

-- | 
pattern FilterPair_Type_FILTERTHIRDPARTYAUDIENCELISTTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERTHIRDPARTYAUDIENCELISTTYPE = FilterPair_Type "FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWAD :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWAD = FilterPair_Type "FILTER_TRUEVIEW_AD"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWADGROUP :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWADGROUP = FilterPair_Type "FILTER_TRUEVIEW_AD_GROUP"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS = FilterPair_Type "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID = FilterPair_Type "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWHOUSEHOLDINCOME :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWHOUSEHOLDINCOME = FilterPair_Type "FILTER_TRUEVIEW_HOUSEHOLD_INCOME"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWIARCOUNTRYNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWIARCOUNTRYNAME = FilterPair_Type "FILTER_TRUEVIEW_IAR_COUNTRY_NAME"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWREMARKETINGLISTNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWREMARKETINGLISTNAME = FilterPair_Type "FILTER_TRUEVIEW_REMARKETING_LIST_NAME"

-- | 
pattern FilterPair_Type_FILTERVARIANTID :: FilterPair_Type
pattern FilterPair_Type_FILTERVARIANTID = FilterPair_Type "FILTER_VARIANT_ID"

-- | 
pattern FilterPair_Type_FILTERVARIANTNAME :: FilterPair_Type
pattern FilterPair_Type_FILTERVARIANTNAME = FilterPair_Type "FILTER_VARIANT_NAME"

-- | 
pattern FilterPair_Type_FILTERVARIANTVERSION :: FilterPair_Type
pattern FilterPair_Type_FILTERVARIANTVERSION = FilterPair_Type "FILTER_VARIANT_VERSION"

-- | 
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZE :: FilterPair_Type
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZE = FilterPair_Type "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE"

-- | 
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPOSITION :: FilterPair_Type
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPOSITION = FilterPair_Type "FILTER_VERIFICATION_VIDEO_POSITION"

-- | 
pattern FilterPair_Type_FILTERVIDEOCOMPANIONCREATIVESIZE :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEOCOMPANIONCREATIVESIZE = FilterPair_Type "FILTER_VIDEO_COMPANION_CREATIVE_SIZE"

-- | 
pattern FilterPair_Type_FILTERVIDEOCONTINUOUSPLAY :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEOCONTINUOUSPLAY = FilterPair_Type "FILTER_VIDEO_CONTINUOUS_PLAY"

-- | 
pattern FilterPair_Type_FILTERVIDEODURATION :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEODURATION = FilterPair_Type "FILTER_VIDEO_DURATION"

-- | 
pattern FilterPair_Type_FILTERYOUTUBEADAPTEDAUDIENCELIST :: FilterPair_Type
pattern FilterPair_Type_FILTERYOUTUBEADAPTEDAUDIENCELIST = FilterPair_Type "FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST"

-- | 
pattern FilterPair_Type_FILTERYOUTUBEADVIDEO :: FilterPair_Type
pattern FilterPair_Type_FILTERYOUTUBEADVIDEO = FilterPair_Type "FILTER_YOUTUBE_AD_VIDEO"

-- | 
pattern FilterPair_Type_FILTERYOUTUBEADVIDEOID :: FilterPair_Type
pattern FilterPair_Type_FILTERYOUTUBEADVIDEOID = FilterPair_Type "FILTER_YOUTUBE_AD_VIDEO_ID"

-- | 
pattern FilterPair_Type_FILTERYOUTUBECHANNEL :: FilterPair_Type
pattern FilterPair_Type_FILTERYOUTUBECHANNEL = FilterPair_Type "FILTER_YOUTUBE_CHANNEL"

-- | 
pattern FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER :: FilterPair_Type
pattern FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER = FilterPair_Type "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER"

-- | 
pattern FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER :: FilterPair_Type
pattern FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER = FilterPair_Type "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER"

-- | 
pattern FilterPair_Type_FILTERYOUTUBEVIDEO :: FilterPair_Type
pattern FilterPair_Type_FILTERYOUTUBEVIDEO = FilterPair_Type "FILTER_YOUTUBE_VIDEO"

-- | 
pattern FilterPair_Type_FILTERZIPPOSTALCODE :: FilterPair_Type
pattern FilterPair_Type_FILTERZIPPOSTALCODE = FilterPair_Type "FILTER_ZIP_POSTAL_CODE"

-- | 
pattern FilterPair_Type_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS :: FilterPair_Type
pattern FilterPair_Type_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS = FilterPair_Type "FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWPLACEMENTID :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWPLACEMENTID = FilterPair_Type "FILTER_TRUEVIEW_PLACEMENT_ID"

-- | 
pattern FilterPair_Type_FILTERPATHPATTERNID :: FilterPair_Type
pattern FilterPair_Type_FILTERPATHPATTERNID = FilterPair_Type "FILTER_PATH_PATTERN_ID"

-- | 
pattern FilterPair_Type_FILTERPATHEVENTINDEX :: FilterPair_Type
pattern FilterPair_Type_FILTERPATHEVENTINDEX = FilterPair_Type "FILTER_PATH_EVENT_INDEX"

-- | 
pattern FilterPair_Type_FILTEREVENTTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTEREVENTTYPE = FilterPair_Type "FILTER_EVENT_TYPE"

-- | 
pattern FilterPair_Type_FILTERCHANNELGROUPING :: FilterPair_Type
pattern FilterPair_Type_FILTERCHANNELGROUPING = FilterPair_Type "FILTER_CHANNEL_GROUPING"

-- | 
pattern FilterPair_Type_FILTEROMSDKAVAILABLE :: FilterPair_Type
pattern FilterPair_Type_FILTEROMSDKAVAILABLE = FilterPair_Type "FILTER_OM_SDK_AVAILABLE"

-- | 
pattern FilterPair_Type_FILTERDATASOURCE :: FilterPair_Type
pattern FilterPair_Type_FILTERDATASOURCE = FilterPair_Type "FILTER_DATA_SOURCE"

-- | 
pattern FilterPair_Type_FILTERCM360PLACEMENTID :: FilterPair_Type
pattern FilterPair_Type_FILTERCM360PLACEMENTID = FilterPair_Type "FILTER_CM360_PLACEMENT_ID"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWCLICKTYPENAME :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWCLICKTYPENAME = FilterPair_Type "FILTER_TRUEVIEW_CLICK_TYPE_NAME"

-- | 
pattern FilterPair_Type_FILTERTRUEVIEWADTYPENAME :: FilterPair_Type
pattern FilterPair_Type_FILTERTRUEVIEWADTYPENAME = FilterPair_Type "FILTER_TRUEVIEW_AD_TYPE_NAME"

-- | 
pattern FilterPair_Type_FILTERVIDEOCONTENTDURATION :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEOCONTENTDURATION = FilterPair_Type "FILTER_VIDEO_CONTENT_DURATION"

-- | 
pattern FilterPair_Type_FILTERMATCHEDGENRETARGET :: FilterPair_Type
pattern FilterPair_Type_FILTERMATCHEDGENRETARGET = FilterPair_Type "FILTER_MATCHED_GENRE_TARGET"

-- | 
pattern FilterPair_Type_FILTERVIDEOCONTENTLIVESTREAM :: FilterPair_Type
pattern FilterPair_Type_FILTERVIDEOCONTENTLIVESTREAM = FilterPair_Type "FILTER_VIDEO_CONTENT_LIVE_STREAM"

-- | 
pattern FilterPair_Type_FILTERBUDGETSEGMENTTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERBUDGETSEGMENTTYPE = FilterPair_Type "FILTER_BUDGET_SEGMENT_TYPE"

-- | 
pattern FilterPair_Type_FILTERBUDGETSEGMENTBUDGET :: FilterPair_Type
pattern FilterPair_Type_FILTERBUDGETSEGMENTBUDGET = FilterPair_Type "FILTER_BUDGET_SEGMENT_BUDGET"

-- | 
pattern FilterPair_Type_FILTERBUDGETSEGMENTSTARTDATE :: FilterPair_Type
pattern FilterPair_Type_FILTERBUDGETSEGMENTSTARTDATE = FilterPair_Type "FILTER_BUDGET_SEGMENT_START_DATE"

-- | 
pattern FilterPair_Type_FILTERBUDGETSEGMENTENDDATE :: FilterPair_Type
pattern FilterPair_Type_FILTERBUDGETSEGMENTENDDATE = FilterPair_Type "FILTER_BUDGET_SEGMENT_END_DATE"

-- | 
pattern FilterPair_Type_FILTERBUDGETSEGMENTPACINGPERCENTAGE :: FilterPair_Type
pattern FilterPair_Type_FILTERBUDGETSEGMENTPACINGPERCENTAGE = FilterPair_Type "FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE"

-- | 
pattern FilterPair_Type_FILTERLINEITEMBUDGET :: FilterPair_Type
pattern FilterPair_Type_FILTERLINEITEMBUDGET = FilterPair_Type "FILTER_LINE_ITEM_BUDGET"

-- | 
pattern FilterPair_Type_FILTERLINEITEMSTARTDATE :: FilterPair_Type
pattern FilterPair_Type_FILTERLINEITEMSTARTDATE = FilterPair_Type "FILTER_LINE_ITEM_START_DATE"

-- | 
pattern FilterPair_Type_FILTERLINEITEMENDDATE :: FilterPair_Type
pattern FilterPair_Type_FILTERLINEITEMENDDATE = FilterPair_Type "FILTER_LINE_ITEM_END_DATE"

-- | 
pattern FilterPair_Type_FILTERINSERTIONORDERGOALTYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERINSERTIONORDERGOALTYPE = FilterPair_Type "FILTER_INSERTION_ORDER_GOAL_TYPE"

-- | 
pattern FilterPair_Type_FILTERLINEITEMPACINGPERCENTAGE :: FilterPair_Type
pattern FilterPair_Type_FILTERLINEITEMPACINGPERCENTAGE = FilterPair_Type "FILTER_LINE_ITEM_PACING_PERCENTAGE"

-- | 
pattern FilterPair_Type_FILTERINSERTIONORDERGOALVALUE :: FilterPair_Type
pattern FilterPair_Type_FILTERINSERTIONORDERGOALVALUE = FilterPair_Type "FILTER_INSERTION_ORDER_GOAL_VALUE"

-- | 
pattern FilterPair_Type_FILTEROMIDCAPABLE :: FilterPair_Type
pattern FilterPair_Type_FILTEROMIDCAPABLE = FilterPair_Type "FILTER_OMID_CAPABLE"

-- | 
pattern FilterPair_Type_FILTERVENDORMEASUREMENTMODE :: FilterPair_Type
pattern FilterPair_Type_FILTERVENDORMEASUREMENTMODE = FilterPair_Type "FILTER_VENDOR_MEASUREMENT_MODE"

-- | 
pattern FilterPair_Type_FILTERIMPRESSIONLOSSREJECTIONREASON :: FilterPair_Type
pattern FilterPair_Type_FILTERIMPRESSIONLOSSREJECTIONREASON = FilterPair_Type "FILTER_IMPRESSION_LOSS_REJECTION_REASON"

-- | 
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZESTART :: FilterPair_Type
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZESTART = FilterPair_Type "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_START"

-- | 
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE :: FilterPair_Type
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE = FilterPair_Type "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_FIRST_QUARTILE"

-- | 
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT :: FilterPair_Type
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT = FilterPair_Type "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_MID_POINT"

-- | 
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE :: FilterPair_Type
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE = FilterPair_Type "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_THIRD_QUARTILE"

-- | 
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE :: FilterPair_Type
pattern FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE = FilterPair_Type "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_COMPLETE"

-- | 
pattern FilterPair_Type_FILTERVERIFICATIONVIDEORESIZED :: FilterPair_Type
pattern FilterPair_Type_FILTERVERIFICATIONVIDEORESIZED = FilterPair_Type "FILTER_VERIFICATION_VIDEO_RESIZED"

-- | 
pattern FilterPair_Type_FILTERVERIFICATIONAUDIBILITYSTART :: FilterPair_Type
pattern FilterPair_Type_FILTERVERIFICATIONAUDIBILITYSTART = FilterPair_Type "FILTER_VERIFICATION_AUDIBILITY_START"

-- | 
pattern FilterPair_Type_FILTERVERIFICATIONAUDIBILITYCOMPLETE :: FilterPair_Type
pattern FilterPair_Type_FILTERVERIFICATIONAUDIBILITYCOMPLETE = FilterPair_Type "FILTER_VERIFICATION_AUDIBILITY_COMPLETE"

-- | 
pattern FilterPair_Type_FILTERMEDIATYPE :: FilterPair_Type
pattern FilterPair_Type_FILTERMEDIATYPE = FilterPair_Type "FILTER_MEDIA_TYPE"

-- | 
pattern FilterPair_Type_FILTERAUDIOFEEDTYPENAME :: FilterPair_Type
pattern FilterPair_Type_FILTERAUDIOFEEDTYPENAME = FilterPair_Type "FILTER_AUDIO_FEED_TYPE_NAME"

{-# COMPLETE
  FilterPair_Type_FILTERUNKNOWN,
  FilterPair_Type_FILTERDATE,
  FilterPair_Type_FILTERDAYOFWEEK,
  FilterPair_Type_FILTERWEEK,
  FilterPair_Type_FILTERMONTH,
  FilterPair_Type_FILTERYEAR,
  FilterPair_Type_FILTERTIMEOFDAY,
  FilterPair_Type_FILTERCONVERSIONDELAY,
  FilterPair_Type_FILTERCREATIVEID,
  FilterPair_Type_FILTERCREATIVESIZE,
  FilterPair_Type_FILTERCREATIVETYPE,
  FilterPair_Type_FILTEREXCHANGEID,
  FilterPair_Type_FILTERADPOSITION,
  FilterPair_Type_FILTERPUBLICINVENTORY,
  FilterPair_Type_FILTERINVENTORYSOURCE,
  FilterPair_Type_FILTERCITY,
  FilterPair_Type_FILTERREGION,
  FilterPair_Type_FILTERDMA,
  FilterPair_Type_FILTERCOUNTRY,
  FilterPair_Type_FILTERSITEID,
  FilterPair_Type_FILTERCHANNELID,
  FilterPair_Type_FILTERPARTNER,
  FilterPair_Type_FILTERADVERTISER,
  FilterPair_Type_FILTERINSERTIONORDER,
  FilterPair_Type_FILTERLINEITEM,
  FilterPair_Type_FILTERPARTNERCURRENCY,
  FilterPair_Type_FILTERADVERTISERCURRENCY,
  FilterPair_Type_FILTERADVERTISERTIMEZONE,
  FilterPair_Type_FILTERLINEITEMTYPE,
  FilterPair_Type_FILTERUSERLIST,
  FilterPair_Type_FILTERUSERLISTFIRSTPARTY,
  FilterPair_Type_FILTERUSERLISTTHIRDPARTY,
  FilterPair_Type_FILTERTARGETEDUSERLIST,
  FilterPair_Type_FILTERDATAPROVIDER,
  FilterPair_Type_FILTERORDERID,
  FilterPair_Type_FILTERVIDEOPLAYERSIZE,
  FilterPair_Type_FILTERVIDEODURATIONSECONDS,
  FilterPair_Type_FILTERKEYWORD,
  FilterPair_Type_FILTERPAGECATEGORY,
  FilterPair_Type_FILTERCAMPAIGNDAILYFREQUENCY,
  FilterPair_Type_FILTERLINEITEMDAILYFREQUENCY,
  FilterPair_Type_FILTERLINEITEMLIFETIMEFREQUENCY,
  FilterPair_Type_FILTEROS,
  FilterPair_Type_FILTERBROWSER,
  FilterPair_Type_FILTERCARRIER,
  FilterPair_Type_FILTERSITELANGUAGE,
  FilterPair_Type_FILTERINVENTORYFORMAT,
  FilterPair_Type_FILTERZIPCODE,
  FilterPair_Type_FILTERVIDEORATINGTIER,
  FilterPair_Type_FILTERVIDEOFORMATSUPPORT,
  FilterPair_Type_FILTERVIDEOSKIPPABLESUPPORT,
  FilterPair_Type_FILTERVIDEOCREATIVEDURATION,
  FilterPair_Type_FILTERPAGELAYOUT,
  FilterPair_Type_FILTERVIDEOADPOSITIONINSTREAM,
  FilterPair_Type_FILTERAGE,
  FilterPair_Type_FILTERGENDER,
  FilterPair_Type_FILTERQUARTER,
  FilterPair_Type_FILTERTRUEVIEWCONVERSIONTYPE,
  FilterPair_Type_FILTERMOBILEGEO,
  FilterPair_Type_FILTERMRAIDSUPPORT,
  FilterPair_Type_FILTERACTIVEVIEWEXPECTEDVIEWABILITY,
  FilterPair_Type_FILTERVIDEOCREATIVEDURATIONSKIPPABLE,
  FilterPair_Type_FILTERNIELSENCOUNTRYCODE,
  FilterPair_Type_FILTERNIELSENDEVICEID,
  FilterPair_Type_FILTERNIELSENGENDER,
  FilterPair_Type_FILTERNIELSENAGE,
  FilterPair_Type_FILTERINVENTORYSOURCETYPE,
  FilterPair_Type_FILTERCREATIVEWIDTH,
  FilterPair_Type_FILTERCREATIVEHEIGHT,
  FilterPair_Type_FILTERDFPORDERID,
  FilterPair_Type_FILTERTRUEVIEWAGE,
  FilterPair_Type_FILTERTRUEVIEWGENDER,
  FilterPair_Type_FILTERTRUEVIEWPARENTALSTATUS,
  FilterPair_Type_FILTERTRUEVIEWREMARKETINGLIST,
  FilterPair_Type_FILTERTRUEVIEWINTEREST,
  FilterPair_Type_FILTERTRUEVIEWADGROUPID,
  FilterPair_Type_FILTERTRUEVIEWADGROUPADID,
  FilterPair_Type_FILTERTRUEVIEWIARLANGUAGE,
  FilterPair_Type_FILTERTRUEVIEWIARGENDER,
  FilterPair_Type_FILTERTRUEVIEWIARAGE,
  FilterPair_Type_FILTERTRUEVIEWIARCATEGORY,
  FilterPair_Type_FILTERTRUEVIEWIARCOUNTRY,
  FilterPair_Type_FILTERTRUEVIEWIARCITY,
  FilterPair_Type_FILTERTRUEVIEWIARREGION,
  FilterPair_Type_FILTERTRUEVIEWIARZIPCODE,
  FilterPair_Type_FILTERTRUEVIEWIARREMARKETINGLIST,
  FilterPair_Type_FILTERTRUEVIEWIARINTEREST,
  FilterPair_Type_FILTERTRUEVIEWIARPARENTALSTATUS,
  FilterPair_Type_FILTERTRUEVIEWIARTIMEOFDAY,
  FilterPair_Type_FILTERTRUEVIEWCUSTOMAFFINITY,
  FilterPair_Type_FILTERTRUEVIEWCATEGORY,
  FilterPair_Type_FILTERTRUEVIEWKEYWORD,
  FilterPair_Type_FILTERTRUEVIEWPLACEMENT,
  FilterPair_Type_FILTERTRUEVIEWURL,
  FilterPair_Type_FILTERTRUEVIEWCOUNTRY,
  FilterPair_Type_FILTERTRUEVIEWREGION,
  FilterPair_Type_FILTERTRUEVIEWCITY,
  FilterPair_Type_FILTERTRUEVIEWDMA,
  FilterPair_Type_FILTERTRUEVIEWZIPCODE,
  FilterPair_Type_FILTERNOTSUPPORTED,
  FilterPair_Type_FILTERMEDIAPLAN,
  FilterPair_Type_FILTERTRUEVIEWIARYOUTUBECHANNEL,
  FilterPair_Type_FILTERTRUEVIEWIARYOUTUBEVIDEO,
  FilterPair_Type_FILTERSKIPPABLESUPPORT,
  FilterPair_Type_FILTERCOMPANIONCREATIVEID,
  FilterPair_Type_FILTERBUDGETSEGMENTDESCRIPTION,
  FilterPair_Type_FILTERFLOODLIGHTACTIVITYID,
  FilterPair_Type_FILTERDEVICEMODEL,
  FilterPair_Type_FILTERDEVICEMAKE,
  FilterPair_Type_FILTERDEVICETYPE,
  FilterPair_Type_FILTERCREATIVEATTRIBUTE,
  FilterPair_Type_FILTERINVENTORYCOMMITMENTTYPE,
  FilterPair_Type_FILTERINVENTORYRATETYPE,
  FilterPair_Type_FILTERINVENTORYDELIVERYMETHOD,
  FilterPair_Type_FILTERINVENTORYSOURCEEXTERNALID,
  FilterPair_Type_FILTERAUTHORIZEDSELLERSTATE,
  FilterPair_Type_FILTERVIDEODURATIONSECONDSRANGE,
  FilterPair_Type_FILTERPARTNERNAME,
  FilterPair_Type_FILTERPARTNERSTATUS,
  FilterPair_Type_FILTERADVERTISERNAME,
  FilterPair_Type_FILTERADVERTISERINTEGRATIONCODE,
  FilterPair_Type_FILTERADVERTISERINTEGRATIONSTATUS,
  FilterPair_Type_FILTERCARRIERNAME,
  FilterPair_Type_FILTERCHANNELNAME,
  FilterPair_Type_FILTERCITYNAME,
  FilterPair_Type_FILTERCOMPANIONCREATIVENAME,
  FilterPair_Type_FILTERUSERLISTFIRSTPARTYNAME,
  FilterPair_Type_FILTERUSERLISTTHIRDPARTYNAME,
  FilterPair_Type_FILTERNIELSENRESTATEMENTDATE,
  FilterPair_Type_FILTERNIELSENDATERANGE,
  FilterPair_Type_FILTERINSERTIONORDERNAME,
  FilterPair_Type_FILTERREGIONNAME,
  FilterPair_Type_FILTERDMANAME,
  FilterPair_Type_FILTERTRUEVIEWIARREGIONNAME,
  FilterPair_Type_FILTERTRUEVIEWDMANAME,
  FilterPair_Type_FILTERTRUEVIEWREGIONNAME,
  FilterPair_Type_FILTERACTIVEVIEWCUSTOMMETRICID,
  FilterPair_Type_FILTERACTIVEVIEWCUSTOMMETRICNAME,
  FilterPair_Type_FILTERADTYPE,
  FilterPair_Type_FILTERALGORITHM,
  FilterPair_Type_FILTERALGORITHMID,
  FilterPair_Type_FILTERAMPPAGEREQUEST,
  FilterPair_Type_FILTERANONYMOUSINVENTORYMODELING,
  FilterPair_Type_FILTERAPPURL,
  FilterPair_Type_FILTERAPPURLEXCLUDED,
  FilterPair_Type_FILTERATTRIBUTEDUSERLIST,
  FilterPair_Type_FILTERATTRIBUTEDUSERLISTCOST,
  FilterPair_Type_FILTERATTRIBUTEDUSERLISTTYPE,
  FilterPair_Type_FILTERATTRIBUTIONMODEL,
  FilterPair_Type_FILTERAUDIENCELIST,
  FilterPair_Type_FILTERAUDIENCELISTCOST,
  FilterPair_Type_FILTERAUDIENCELISTTYPE,
  FilterPair_Type_FILTERAUDIENCENAME,
  FilterPair_Type_FILTERAUDIENCETYPE,
  FilterPair_Type_FILTERBILLABLEOUTCOME,
  FilterPair_Type_FILTERBRANDLIFTTYPE,
  FilterPair_Type_FILTERCHANNELTYPE,
  FilterPair_Type_FILTERCMPLACEMENTID,
  FilterPair_Type_FILTERCONVERSIONSOURCE,
  FilterPair_Type_FILTERCONVERSIONSOURCEID,
  FilterPair_Type_FILTERCOUNTRYID,
  FilterPair_Type_FILTERCREATIVE,
  FilterPair_Type_FILTERCREATIVEASSET,
  FilterPair_Type_FILTERCREATIVEINTEGRATIONCODE,
  FilterPair_Type_FILTERCREATIVERENDEREDINAMP,
  FilterPair_Type_FILTERCREATIVESOURCE,
  FilterPair_Type_FILTERCREATIVESTATUS,
  FilterPair_Type_FILTERDATAPROVIDERNAME,
  FilterPair_Type_FILTERDETAILEDDEMOGRAPHICS,
  FilterPair_Type_FILTERDETAILEDDEMOGRAPHICSID,
  FilterPair_Type_FILTERDEVICE,
  FilterPair_Type_FILTERGAMINSERTIONORDER,
  FilterPair_Type_FILTERGAMLINEITEM,
  FilterPair_Type_FILTERGAMLINEITEMID,
  FilterPair_Type_FILTERDIGITALCONTENTLABEL,
  FilterPair_Type_FILTERDOMAIN,
  FilterPair_Type_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST,
  FilterPair_Type_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST,
  FilterPair_Type_FILTEREXCHANGE,
  FilterPair_Type_FILTEREXCHANGECODE,
  FilterPair_Type_FILTEREXTENSION,
  FilterPair_Type_FILTEREXTENSIONSTATUS,
  FilterPair_Type_FILTEREXTENSIONTYPE,
  FilterPair_Type_FILTERFIRSTPARTYAUDIENCELISTCOST,
  FilterPair_Type_FILTERFIRSTPARTYAUDIENCELISTTYPE,
  FilterPair_Type_FILTERFLOODLIGHTACTIVITY,
  FilterPair_Type_FILTERFORMAT,
  FilterPair_Type_FILTERGMAILAGE,
  FilterPair_Type_FILTERGMAILCITY,
  FilterPair_Type_FILTERGMAILCOUNTRY,
  FilterPair_Type_FILTERGMAILCOUNTRYNAME,
  FilterPair_Type_FILTERGMAILDEVICETYPE,
  FilterPair_Type_FILTERGMAILDEVICETYPENAME,
  FilterPair_Type_FILTERGMAILGENDER,
  FilterPair_Type_FILTERGMAILREGION,
  FilterPair_Type_FILTERGMAILREMARKETINGLIST,
  FilterPair_Type_FILTERHOUSEHOLDINCOME,
  FilterPair_Type_FILTERIMPRESSIONCOUNTINGMETHOD,
  FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER,
  FilterPair_Type_FILTERINSERTIONORDERINTEGRATIONCODE,
  FilterPair_Type_FILTERINSERTIONORDERSTATUS,
  FilterPair_Type_FILTERINTEREST,
  FilterPair_Type_FILTERINVENTORYSOURCEGROUP,
  FilterPair_Type_FILTERINVENTORYSOURCEGROUPID,
  FilterPair_Type_FILTERINVENTORYSOURCEID,
  FilterPair_Type_FILTERINVENTORYSOURCENAME,
  FilterPair_Type_FILTERLIFEEVENT,
  FilterPair_Type_FILTERLIFEEVENTS,
  FilterPair_Type_FILTERLINEITEMINTEGRATIONCODE,
  FilterPair_Type_FILTERLINEITEMNAME,
  FilterPair_Type_FILTERLINEITEMSTATUS,
  FilterPair_Type_FILTERMATCHRATIO,
  FilterPair_Type_FILTERMEASUREMENTSOURCE,
  FilterPair_Type_FILTERMEDIAPLANNAME,
  FilterPair_Type_FILTERPARENTALSTATUS,
  FilterPair_Type_FILTERPLACEMENTALLYOUTUBECHANNELS,
  FilterPair_Type_FILTERPLATFORM,
  FilterPair_Type_FILTERPLAYBACKMETHOD,
  FilterPair_Type_FILTERPOSITIONINCONTENT,
  FilterPair_Type_FILTERPUBLISHERPROPERTY,
  FilterPair_Type_FILTERPUBLISHERPROPERTYID,
  FilterPair_Type_FILTERPUBLISHERPROPERTYSECTION,
  FilterPair_Type_FILTERPUBLISHERPROPERTYSECTIONID,
  FilterPair_Type_FILTERREFUNDREASON,
  FilterPair_Type_FILTERREMARKETINGLIST,
  FilterPair_Type_FILTERREWARDED,
  FilterPair_Type_FILTERSENSITIVECATEGORY,
  FilterPair_Type_FILTERSERVEDPIXELDENSITY,
  FilterPair_Type_FILTERTARGETEDDATAPROVIDERS,
  FilterPair_Type_FILTERTHIRDPARTYAUDIENCELISTCOST,
  FilterPair_Type_FILTERTHIRDPARTYAUDIENCELISTTYPE,
  FilterPair_Type_FILTERTRUEVIEWAD,
  FilterPair_Type_FILTERTRUEVIEWADGROUP,
  FilterPair_Type_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS,
  FilterPair_Type_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID,
  FilterPair_Type_FILTERTRUEVIEWHOUSEHOLDINCOME,
  FilterPair_Type_FILTERTRUEVIEWIARCOUNTRYNAME,
  FilterPair_Type_FILTERTRUEVIEWREMARKETINGLISTNAME,
  FilterPair_Type_FILTERVARIANTID,
  FilterPair_Type_FILTERVARIANTNAME,
  FilterPair_Type_FILTERVARIANTVERSION,
  FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZE,
  FilterPair_Type_FILTERVERIFICATIONVIDEOPOSITION,
  FilterPair_Type_FILTERVIDEOCOMPANIONCREATIVESIZE,
  FilterPair_Type_FILTERVIDEOCONTINUOUSPLAY,
  FilterPair_Type_FILTERVIDEODURATION,
  FilterPair_Type_FILTERYOUTUBEADAPTEDAUDIENCELIST,
  FilterPair_Type_FILTERYOUTUBEADVIDEO,
  FilterPair_Type_FILTERYOUTUBEADVIDEOID,
  FilterPair_Type_FILTERYOUTUBECHANNEL,
  FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER,
  FilterPair_Type_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER,
  FilterPair_Type_FILTERYOUTUBEVIDEO,
  FilterPair_Type_FILTERZIPPOSTALCODE,
  FilterPair_Type_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS,
  FilterPair_Type_FILTERTRUEVIEWPLACEMENTID,
  FilterPair_Type_FILTERPATHPATTERNID,
  FilterPair_Type_FILTERPATHEVENTINDEX,
  FilterPair_Type_FILTEREVENTTYPE,
  FilterPair_Type_FILTERCHANNELGROUPING,
  FilterPair_Type_FILTEROMSDKAVAILABLE,
  FilterPair_Type_FILTERDATASOURCE,
  FilterPair_Type_FILTERCM360PLACEMENTID,
  FilterPair_Type_FILTERTRUEVIEWCLICKTYPENAME,
  FilterPair_Type_FILTERTRUEVIEWADTYPENAME,
  FilterPair_Type_FILTERVIDEOCONTENTDURATION,
  FilterPair_Type_FILTERMATCHEDGENRETARGET,
  FilterPair_Type_FILTERVIDEOCONTENTLIVESTREAM,
  FilterPair_Type_FILTERBUDGETSEGMENTTYPE,
  FilterPair_Type_FILTERBUDGETSEGMENTBUDGET,
  FilterPair_Type_FILTERBUDGETSEGMENTSTARTDATE,
  FilterPair_Type_FILTERBUDGETSEGMENTENDDATE,
  FilterPair_Type_FILTERBUDGETSEGMENTPACINGPERCENTAGE,
  FilterPair_Type_FILTERLINEITEMBUDGET,
  FilterPair_Type_FILTERLINEITEMSTARTDATE,
  FilterPair_Type_FILTERLINEITEMENDDATE,
  FilterPair_Type_FILTERINSERTIONORDERGOALTYPE,
  FilterPair_Type_FILTERLINEITEMPACINGPERCENTAGE,
  FilterPair_Type_FILTERINSERTIONORDERGOALVALUE,
  FilterPair_Type_FILTEROMIDCAPABLE,
  FilterPair_Type_FILTERVENDORMEASUREMENTMODE,
  FilterPair_Type_FILTERIMPRESSIONLOSSREJECTIONREASON,
  FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZESTART,
  FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE,
  FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT,
  FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE,
  FilterPair_Type_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE,
  FilterPair_Type_FILTERVERIFICATIONVIDEORESIZED,
  FilterPair_Type_FILTERVERIFICATIONAUDIBILITYSTART,
  FilterPair_Type_FILTERVERIFICATIONAUDIBILITYCOMPLETE,
  FilterPair_Type_FILTERMEDIATYPE,
  FilterPair_Type_FILTERAUDIOFEEDTYPENAME,
  FilterPair_Type #-}

newtype Parameters_GroupBysItem = Parameters_GroupBysItem { fromParameters_GroupBysItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Parameters_GroupBysItem_FILTERUNKNOWN :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERUNKNOWN = Parameters_GroupBysItem "FILTER_UNKNOWN"

-- | 
pattern Parameters_GroupBysItem_FILTERDATE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDATE = Parameters_GroupBysItem "FILTER_DATE"

-- | 
pattern Parameters_GroupBysItem_FILTERDAYOFWEEK :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDAYOFWEEK = Parameters_GroupBysItem "FILTER_DAY_OF_WEEK"

-- | 
pattern Parameters_GroupBysItem_FILTERWEEK :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERWEEK = Parameters_GroupBysItem "FILTER_WEEK"

-- | 
pattern Parameters_GroupBysItem_FILTERMONTH :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERMONTH = Parameters_GroupBysItem "FILTER_MONTH"

-- | 
pattern Parameters_GroupBysItem_FILTERYEAR :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERYEAR = Parameters_GroupBysItem "FILTER_YEAR"

-- | 
pattern Parameters_GroupBysItem_FILTERTIMEOFDAY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTIMEOFDAY = Parameters_GroupBysItem "FILTER_TIME_OF_DAY"

-- | 
pattern Parameters_GroupBysItem_FILTERCONVERSIONDELAY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCONVERSIONDELAY = Parameters_GroupBysItem "FILTER_CONVERSION_DELAY"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVEID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVEID = Parameters_GroupBysItem "FILTER_CREATIVE_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVESIZE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVESIZE = Parameters_GroupBysItem "FILTER_CREATIVE_SIZE"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVETYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVETYPE = Parameters_GroupBysItem "FILTER_CREATIVE_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTEREXCHANGEID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTEREXCHANGEID = Parameters_GroupBysItem "FILTER_EXCHANGE_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERADPOSITION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERADPOSITION = Parameters_GroupBysItem "FILTER_AD_POSITION"

-- | 
pattern Parameters_GroupBysItem_FILTERPUBLICINVENTORY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPUBLICINVENTORY = Parameters_GroupBysItem "FILTER_PUBLIC_INVENTORY"

-- | 
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCE = Parameters_GroupBysItem "FILTER_INVENTORY_SOURCE"

-- | 
pattern Parameters_GroupBysItem_FILTERCITY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCITY = Parameters_GroupBysItem "FILTER_CITY"

-- | 
pattern Parameters_GroupBysItem_FILTERREGION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERREGION = Parameters_GroupBysItem "FILTER_REGION"

-- | 
pattern Parameters_GroupBysItem_FILTERDMA :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDMA = Parameters_GroupBysItem "FILTER_DMA"

-- | 
pattern Parameters_GroupBysItem_FILTERCOUNTRY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCOUNTRY = Parameters_GroupBysItem "FILTER_COUNTRY"

-- | 
pattern Parameters_GroupBysItem_FILTERSITEID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERSITEID = Parameters_GroupBysItem "FILTER_SITE_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERCHANNELID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCHANNELID = Parameters_GroupBysItem "FILTER_CHANNEL_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERPARTNER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPARTNER = Parameters_GroupBysItem "FILTER_PARTNER"

-- | 
pattern Parameters_GroupBysItem_FILTERADVERTISER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERADVERTISER = Parameters_GroupBysItem "FILTER_ADVERTISER"

-- | 
pattern Parameters_GroupBysItem_FILTERINSERTIONORDER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINSERTIONORDER = Parameters_GroupBysItem "FILTER_INSERTION_ORDER"

-- | 
pattern Parameters_GroupBysItem_FILTERLINEITEM :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLINEITEM = Parameters_GroupBysItem "FILTER_LINE_ITEM"

-- | 
pattern Parameters_GroupBysItem_FILTERPARTNERCURRENCY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPARTNERCURRENCY = Parameters_GroupBysItem "FILTER_PARTNER_CURRENCY"

-- | 
pattern Parameters_GroupBysItem_FILTERADVERTISERCURRENCY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERADVERTISERCURRENCY = Parameters_GroupBysItem "FILTER_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_GroupBysItem_FILTERADVERTISERTIMEZONE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERADVERTISERTIMEZONE = Parameters_GroupBysItem "FILTER_ADVERTISER_TIMEZONE"

-- | 
pattern Parameters_GroupBysItem_FILTERLINEITEMTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLINEITEMTYPE = Parameters_GroupBysItem "FILTER_LINE_ITEM_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERUSERLIST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERUSERLIST = Parameters_GroupBysItem "FILTER_USER_LIST"

-- | 
pattern Parameters_GroupBysItem_FILTERUSERLISTFIRSTPARTY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERUSERLISTFIRSTPARTY = Parameters_GroupBysItem "FILTER_USER_LIST_FIRST_PARTY"

-- | 
pattern Parameters_GroupBysItem_FILTERUSERLISTTHIRDPARTY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERUSERLISTTHIRDPARTY = Parameters_GroupBysItem "FILTER_USER_LIST_THIRD_PARTY"

-- | 
pattern Parameters_GroupBysItem_FILTERTARGETEDUSERLIST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTARGETEDUSERLIST = Parameters_GroupBysItem "FILTER_TARGETED_USER_LIST"

-- | 
pattern Parameters_GroupBysItem_FILTERDATAPROVIDER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDATAPROVIDER = Parameters_GroupBysItem "FILTER_DATA_PROVIDER"

-- | 
pattern Parameters_GroupBysItem_FILTERORDERID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERORDERID = Parameters_GroupBysItem "FILTER_ORDER_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEOPLAYERSIZE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEOPLAYERSIZE = Parameters_GroupBysItem "FILTER_VIDEO_PLAYER_SIZE"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEODURATIONSECONDS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEODURATIONSECONDS = Parameters_GroupBysItem "FILTER_VIDEO_DURATION_SECONDS"

-- | 
pattern Parameters_GroupBysItem_FILTERKEYWORD :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERKEYWORD = Parameters_GroupBysItem "FILTER_KEYWORD"

-- | 
pattern Parameters_GroupBysItem_FILTERPAGECATEGORY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPAGECATEGORY = Parameters_GroupBysItem "FILTER_PAGE_CATEGORY"

-- | 
pattern Parameters_GroupBysItem_FILTERCAMPAIGNDAILYFREQUENCY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCAMPAIGNDAILYFREQUENCY = Parameters_GroupBysItem "FILTER_CAMPAIGN_DAILY_FREQUENCY"

-- | 
pattern Parameters_GroupBysItem_FILTERLINEITEMDAILYFREQUENCY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLINEITEMDAILYFREQUENCY = Parameters_GroupBysItem "FILTER_LINE_ITEM_DAILY_FREQUENCY"

-- | 
pattern Parameters_GroupBysItem_FILTERLINEITEMLIFETIMEFREQUENCY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLINEITEMLIFETIMEFREQUENCY = Parameters_GroupBysItem "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"

-- | 
pattern Parameters_GroupBysItem_FILTEROS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTEROS = Parameters_GroupBysItem "FILTER_OS"

-- | 
pattern Parameters_GroupBysItem_FILTERBROWSER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERBROWSER = Parameters_GroupBysItem "FILTER_BROWSER"

-- | 
pattern Parameters_GroupBysItem_FILTERCARRIER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCARRIER = Parameters_GroupBysItem "FILTER_CARRIER"

-- | 
pattern Parameters_GroupBysItem_FILTERSITELANGUAGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERSITELANGUAGE = Parameters_GroupBysItem "FILTER_SITE_LANGUAGE"

-- | 
pattern Parameters_GroupBysItem_FILTERINVENTORYFORMAT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINVENTORYFORMAT = Parameters_GroupBysItem "FILTER_INVENTORY_FORMAT"

-- | 
pattern Parameters_GroupBysItem_FILTERZIPCODE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERZIPCODE = Parameters_GroupBysItem "FILTER_ZIP_CODE"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEORATINGTIER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEORATINGTIER = Parameters_GroupBysItem "FILTER_VIDEO_RATING_TIER"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEOFORMATSUPPORT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEOFORMATSUPPORT = Parameters_GroupBysItem "FILTER_VIDEO_FORMAT_SUPPORT"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEOSKIPPABLESUPPORT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEOSKIPPABLESUPPORT = Parameters_GroupBysItem "FILTER_VIDEO_SKIPPABLE_SUPPORT"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEOCREATIVEDURATION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEOCREATIVEDURATION = Parameters_GroupBysItem "FILTER_VIDEO_CREATIVE_DURATION"

-- | 
pattern Parameters_GroupBysItem_FILTERPAGELAYOUT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPAGELAYOUT = Parameters_GroupBysItem "FILTER_PAGE_LAYOUT"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEOADPOSITIONINSTREAM :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEOADPOSITIONINSTREAM = Parameters_GroupBysItem "FILTER_VIDEO_AD_POSITION_IN_STREAM"

-- | 
pattern Parameters_GroupBysItem_FILTERAGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERAGE = Parameters_GroupBysItem "FILTER_AGE"

-- | 
pattern Parameters_GroupBysItem_FILTERGENDER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGENDER = Parameters_GroupBysItem "FILTER_GENDER"

-- | 
pattern Parameters_GroupBysItem_FILTERQUARTER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERQUARTER = Parameters_GroupBysItem "FILTER_QUARTER"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCONVERSIONTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCONVERSIONTYPE = Parameters_GroupBysItem "FILTER_TRUEVIEW_CONVERSION_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERMOBILEGEO :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERMOBILEGEO = Parameters_GroupBysItem "FILTER_MOBILE_GEO"

-- | 
pattern Parameters_GroupBysItem_FILTERMRAIDSUPPORT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERMRAIDSUPPORT = Parameters_GroupBysItem "FILTER_MRAID_SUPPORT"

-- | 
pattern Parameters_GroupBysItem_FILTERACTIVEVIEWEXPECTEDVIEWABILITY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERACTIVEVIEWEXPECTEDVIEWABILITY = Parameters_GroupBysItem "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEOCREATIVEDURATIONSKIPPABLE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEOCREATIVEDURATIONSKIPPABLE = Parameters_GroupBysItem "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"

-- | 
pattern Parameters_GroupBysItem_FILTERNIELSENCOUNTRYCODE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERNIELSENCOUNTRYCODE = Parameters_GroupBysItem "FILTER_NIELSEN_COUNTRY_CODE"

-- | 
pattern Parameters_GroupBysItem_FILTERNIELSENDEVICEID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERNIELSENDEVICEID = Parameters_GroupBysItem "FILTER_NIELSEN_DEVICE_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERNIELSENGENDER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERNIELSENGENDER = Parameters_GroupBysItem "FILTER_NIELSEN_GENDER"

-- | 
pattern Parameters_GroupBysItem_FILTERNIELSENAGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERNIELSENAGE = Parameters_GroupBysItem "FILTER_NIELSEN_AGE"

-- | 
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCETYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCETYPE = Parameters_GroupBysItem "FILTER_INVENTORY_SOURCE_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVEWIDTH :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVEWIDTH = Parameters_GroupBysItem "FILTER_CREATIVE_WIDTH"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVEHEIGHT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVEHEIGHT = Parameters_GroupBysItem "FILTER_CREATIVE_HEIGHT"

-- | 
pattern Parameters_GroupBysItem_FILTERDFPORDERID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDFPORDERID = Parameters_GroupBysItem "FILTER_DFP_ORDER_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWAGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWAGE = Parameters_GroupBysItem "FILTER_TRUEVIEW_AGE"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWGENDER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWGENDER = Parameters_GroupBysItem "FILTER_TRUEVIEW_GENDER"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWPARENTALSTATUS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWPARENTALSTATUS = Parameters_GroupBysItem "FILTER_TRUEVIEW_PARENTAL_STATUS"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWREMARKETINGLIST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWREMARKETINGLIST = Parameters_GroupBysItem "FILTER_TRUEVIEW_REMARKETING_LIST"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWINTEREST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWINTEREST = Parameters_GroupBysItem "FILTER_TRUEVIEW_INTEREST"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWADGROUPID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWADGROUPID = Parameters_GroupBysItem "FILTER_TRUEVIEW_AD_GROUP_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWADGROUPADID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWADGROUPADID = Parameters_GroupBysItem "FILTER_TRUEVIEW_AD_GROUP_AD_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARLANGUAGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARLANGUAGE = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_LANGUAGE"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARGENDER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARGENDER = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_GENDER"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARAGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARAGE = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_AGE"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARCATEGORY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARCATEGORY = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_CATEGORY"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARCOUNTRY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARCOUNTRY = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_COUNTRY"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARCITY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARCITY = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_CITY"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARREGION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARREGION = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_REGION"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARZIPCODE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARZIPCODE = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_ZIPCODE"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARREMARKETINGLIST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARREMARKETINGLIST = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARINTEREST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARINTEREST = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_INTEREST"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARPARENTALSTATUS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARPARENTALSTATUS = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARTIMEOFDAY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARTIMEOFDAY = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCUSTOMAFFINITY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCUSTOMAFFINITY = Parameters_GroupBysItem "FILTER_TRUEVIEW_CUSTOM_AFFINITY"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCATEGORY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCATEGORY = Parameters_GroupBysItem "FILTER_TRUEVIEW_CATEGORY"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWKEYWORD :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWKEYWORD = Parameters_GroupBysItem "FILTER_TRUEVIEW_KEYWORD"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWPLACEMENT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWPLACEMENT = Parameters_GroupBysItem "FILTER_TRUEVIEW_PLACEMENT"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWURL :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWURL = Parameters_GroupBysItem "FILTER_TRUEVIEW_URL"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCOUNTRY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCOUNTRY = Parameters_GroupBysItem "FILTER_TRUEVIEW_COUNTRY"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWREGION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWREGION = Parameters_GroupBysItem "FILTER_TRUEVIEW_REGION"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCITY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCITY = Parameters_GroupBysItem "FILTER_TRUEVIEW_CITY"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWDMA :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWDMA = Parameters_GroupBysItem "FILTER_TRUEVIEW_DMA"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWZIPCODE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWZIPCODE = Parameters_GroupBysItem "FILTER_TRUEVIEW_ZIPCODE"

-- | 
pattern Parameters_GroupBysItem_FILTERNOTSUPPORTED :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERNOTSUPPORTED = Parameters_GroupBysItem "FILTER_NOT_SUPPORTED"

-- | 
pattern Parameters_GroupBysItem_FILTERMEDIAPLAN :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERMEDIAPLAN = Parameters_GroupBysItem "FILTER_MEDIA_PLAN"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARYOUTUBECHANNEL :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARYOUTUBECHANNEL = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARYOUTUBEVIDEO :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARYOUTUBEVIDEO = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"

-- | 
pattern Parameters_GroupBysItem_FILTERSKIPPABLESUPPORT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERSKIPPABLESUPPORT = Parameters_GroupBysItem "FILTER_SKIPPABLE_SUPPORT"

-- | 
pattern Parameters_GroupBysItem_FILTERCOMPANIONCREATIVEID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCOMPANIONCREATIVEID = Parameters_GroupBysItem "FILTER_COMPANION_CREATIVE_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTDESCRIPTION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTDESCRIPTION = Parameters_GroupBysItem "FILTER_BUDGET_SEGMENT_DESCRIPTION"

-- | 
pattern Parameters_GroupBysItem_FILTERFLOODLIGHTACTIVITYID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERFLOODLIGHTACTIVITYID = Parameters_GroupBysItem "FILTER_FLOODLIGHT_ACTIVITY_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERDEVICEMODEL :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDEVICEMODEL = Parameters_GroupBysItem "FILTER_DEVICE_MODEL"

-- | 
pattern Parameters_GroupBysItem_FILTERDEVICEMAKE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDEVICEMAKE = Parameters_GroupBysItem "FILTER_DEVICE_MAKE"

-- | 
pattern Parameters_GroupBysItem_FILTERDEVICETYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDEVICETYPE = Parameters_GroupBysItem "FILTER_DEVICE_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVEATTRIBUTE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVEATTRIBUTE = Parameters_GroupBysItem "FILTER_CREATIVE_ATTRIBUTE"

-- | 
pattern Parameters_GroupBysItem_FILTERINVENTORYCOMMITMENTTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINVENTORYCOMMITMENTTYPE = Parameters_GroupBysItem "FILTER_INVENTORY_COMMITMENT_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERINVENTORYRATETYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINVENTORYRATETYPE = Parameters_GroupBysItem "FILTER_INVENTORY_RATE_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERINVENTORYDELIVERYMETHOD :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINVENTORYDELIVERYMETHOD = Parameters_GroupBysItem "FILTER_INVENTORY_DELIVERY_METHOD"

-- | 
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCEEXTERNALID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCEEXTERNALID = Parameters_GroupBysItem "FILTER_INVENTORY_SOURCE_EXTERNAL_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERAUTHORIZEDSELLERSTATE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERAUTHORIZEDSELLERSTATE = Parameters_GroupBysItem "FILTER_AUTHORIZED_SELLER_STATE"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEODURATIONSECONDSRANGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEODURATIONSECONDSRANGE = Parameters_GroupBysItem "FILTER_VIDEO_DURATION_SECONDS_RANGE"

-- | 
pattern Parameters_GroupBysItem_FILTERPARTNERNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPARTNERNAME = Parameters_GroupBysItem "FILTER_PARTNER_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERPARTNERSTATUS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPARTNERSTATUS = Parameters_GroupBysItem "FILTER_PARTNER_STATUS"

-- | 
pattern Parameters_GroupBysItem_FILTERADVERTISERNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERADVERTISERNAME = Parameters_GroupBysItem "FILTER_ADVERTISER_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERADVERTISERINTEGRATIONCODE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERADVERTISERINTEGRATIONCODE = Parameters_GroupBysItem "FILTER_ADVERTISER_INTEGRATION_CODE"

-- | 
pattern Parameters_GroupBysItem_FILTERADVERTISERINTEGRATIONSTATUS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERADVERTISERINTEGRATIONSTATUS = Parameters_GroupBysItem "FILTER_ADVERTISER_INTEGRATION_STATUS"

-- | 
pattern Parameters_GroupBysItem_FILTERCARRIERNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCARRIERNAME = Parameters_GroupBysItem "FILTER_CARRIER_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERCHANNELNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCHANNELNAME = Parameters_GroupBysItem "FILTER_CHANNEL_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERCITYNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCITYNAME = Parameters_GroupBysItem "FILTER_CITY_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERCOMPANIONCREATIVENAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCOMPANIONCREATIVENAME = Parameters_GroupBysItem "FILTER_COMPANION_CREATIVE_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERUSERLISTFIRSTPARTYNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERUSERLISTFIRSTPARTYNAME = Parameters_GroupBysItem "FILTER_USER_LIST_FIRST_PARTY_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERUSERLISTTHIRDPARTYNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERUSERLISTTHIRDPARTYNAME = Parameters_GroupBysItem "FILTER_USER_LIST_THIRD_PARTY_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERNIELSENRESTATEMENTDATE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERNIELSENRESTATEMENTDATE = Parameters_GroupBysItem "FILTER_NIELSEN_RESTATEMENT_DATE"

-- | 
pattern Parameters_GroupBysItem_FILTERNIELSENDATERANGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERNIELSENDATERANGE = Parameters_GroupBysItem "FILTER_NIELSEN_DATE_RANGE"

-- | 
pattern Parameters_GroupBysItem_FILTERINSERTIONORDERNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINSERTIONORDERNAME = Parameters_GroupBysItem "FILTER_INSERTION_ORDER_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERREGIONNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERREGIONNAME = Parameters_GroupBysItem "FILTER_REGION_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERDMANAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDMANAME = Parameters_GroupBysItem "FILTER_DMA_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARREGIONNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARREGIONNAME = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_REGION_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWDMANAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWDMANAME = Parameters_GroupBysItem "FILTER_TRUEVIEW_DMA_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWREGIONNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWREGIONNAME = Parameters_GroupBysItem "FILTER_TRUEVIEW_REGION_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERACTIVEVIEWCUSTOMMETRICID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERACTIVEVIEWCUSTOMMETRICID = Parameters_GroupBysItem "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERACTIVEVIEWCUSTOMMETRICNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERACTIVEVIEWCUSTOMMETRICNAME = Parameters_GroupBysItem "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERADTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERADTYPE = Parameters_GroupBysItem "FILTER_AD_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERALGORITHM :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERALGORITHM = Parameters_GroupBysItem "FILTER_ALGORITHM"

-- | 
pattern Parameters_GroupBysItem_FILTERALGORITHMID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERALGORITHMID = Parameters_GroupBysItem "FILTER_ALGORITHM_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERAMPPAGEREQUEST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERAMPPAGEREQUEST = Parameters_GroupBysItem "FILTER_AMP_PAGE_REQUEST"

-- | 
pattern Parameters_GroupBysItem_FILTERANONYMOUSINVENTORYMODELING :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERANONYMOUSINVENTORYMODELING = Parameters_GroupBysItem "FILTER_ANONYMOUS_INVENTORY_MODELING"

-- | 
pattern Parameters_GroupBysItem_FILTERAPPURL :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERAPPURL = Parameters_GroupBysItem "FILTER_APP_URL"

-- | 
pattern Parameters_GroupBysItem_FILTERAPPURLEXCLUDED :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERAPPURLEXCLUDED = Parameters_GroupBysItem "FILTER_APP_URL_EXCLUDED"

-- | 
pattern Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLIST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLIST = Parameters_GroupBysItem "FILTER_ATTRIBUTED_USERLIST"

-- | 
pattern Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLISTCOST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLISTCOST = Parameters_GroupBysItem "FILTER_ATTRIBUTED_USERLIST_COST"

-- | 
pattern Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLISTTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLISTTYPE = Parameters_GroupBysItem "FILTER_ATTRIBUTED_USERLIST_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERATTRIBUTIONMODEL :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERATTRIBUTIONMODEL = Parameters_GroupBysItem "FILTER_ATTRIBUTION_MODEL"

-- | 
pattern Parameters_GroupBysItem_FILTERAUDIENCELIST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERAUDIENCELIST = Parameters_GroupBysItem "FILTER_AUDIENCE_LIST"

-- | 
pattern Parameters_GroupBysItem_FILTERAUDIENCELISTCOST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERAUDIENCELISTCOST = Parameters_GroupBysItem "FILTER_AUDIENCE_LIST_COST"

-- | 
pattern Parameters_GroupBysItem_FILTERAUDIENCELISTTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERAUDIENCELISTTYPE = Parameters_GroupBysItem "FILTER_AUDIENCE_LIST_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERAUDIENCENAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERAUDIENCENAME = Parameters_GroupBysItem "FILTER_AUDIENCE_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERAUDIENCETYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERAUDIENCETYPE = Parameters_GroupBysItem "FILTER_AUDIENCE_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERBILLABLEOUTCOME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERBILLABLEOUTCOME = Parameters_GroupBysItem "FILTER_BILLABLE_OUTCOME"

-- | 
pattern Parameters_GroupBysItem_FILTERBRANDLIFTTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERBRANDLIFTTYPE = Parameters_GroupBysItem "FILTER_BRAND_LIFT_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERCHANNELTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCHANNELTYPE = Parameters_GroupBysItem "FILTER_CHANNEL_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERCMPLACEMENTID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCMPLACEMENTID = Parameters_GroupBysItem "FILTER_CM_PLACEMENT_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERCONVERSIONSOURCE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCONVERSIONSOURCE = Parameters_GroupBysItem "FILTER_CONVERSION_SOURCE"

-- | 
pattern Parameters_GroupBysItem_FILTERCONVERSIONSOURCEID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCONVERSIONSOURCEID = Parameters_GroupBysItem "FILTER_CONVERSION_SOURCE_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERCOUNTRYID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCOUNTRYID = Parameters_GroupBysItem "FILTER_COUNTRY_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVE = Parameters_GroupBysItem "FILTER_CREATIVE"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVEASSET :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVEASSET = Parameters_GroupBysItem "FILTER_CREATIVE_ASSET"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVEINTEGRATIONCODE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVEINTEGRATIONCODE = Parameters_GroupBysItem "FILTER_CREATIVE_INTEGRATION_CODE"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVERENDEREDINAMP :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVERENDEREDINAMP = Parameters_GroupBysItem "FILTER_CREATIVE_RENDERED_IN_AMP"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVESOURCE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVESOURCE = Parameters_GroupBysItem "FILTER_CREATIVE_SOURCE"

-- | 
pattern Parameters_GroupBysItem_FILTERCREATIVESTATUS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCREATIVESTATUS = Parameters_GroupBysItem "FILTER_CREATIVE_STATUS"

-- | 
pattern Parameters_GroupBysItem_FILTERDATAPROVIDERNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDATAPROVIDERNAME = Parameters_GroupBysItem "FILTER_DATA_PROVIDER_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERDETAILEDDEMOGRAPHICS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDETAILEDDEMOGRAPHICS = Parameters_GroupBysItem "FILTER_DETAILED_DEMOGRAPHICS"

-- | 
pattern Parameters_GroupBysItem_FILTERDETAILEDDEMOGRAPHICSID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDETAILEDDEMOGRAPHICSID = Parameters_GroupBysItem "FILTER_DETAILED_DEMOGRAPHICS_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERDEVICE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDEVICE = Parameters_GroupBysItem "FILTER_DEVICE"

-- | 
pattern Parameters_GroupBysItem_FILTERGAMINSERTIONORDER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGAMINSERTIONORDER = Parameters_GroupBysItem "FILTER_GAM_INSERTION_ORDER"

-- | 
pattern Parameters_GroupBysItem_FILTERGAMLINEITEM :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGAMLINEITEM = Parameters_GroupBysItem "FILTER_GAM_LINE_ITEM"

-- | 
pattern Parameters_GroupBysItem_FILTERGAMLINEITEMID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGAMLINEITEMID = Parameters_GroupBysItem "FILTER_GAM_LINE_ITEM_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERDIGITALCONTENTLABEL :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDIGITALCONTENTLABEL = Parameters_GroupBysItem "FILTER_DIGITAL_CONTENT_LABEL"

-- | 
pattern Parameters_GroupBysItem_FILTERDOMAIN :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDOMAIN = Parameters_GroupBysItem "FILTER_DOMAIN"

-- | 
pattern Parameters_GroupBysItem_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST = Parameters_GroupBysItem "FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST"

-- | 
pattern Parameters_GroupBysItem_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST = Parameters_GroupBysItem "FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST"

-- | 
pattern Parameters_GroupBysItem_FILTEREXCHANGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTEREXCHANGE = Parameters_GroupBysItem "FILTER_EXCHANGE"

-- | 
pattern Parameters_GroupBysItem_FILTEREXCHANGECODE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTEREXCHANGECODE = Parameters_GroupBysItem "FILTER_EXCHANGE_CODE"

-- | 
pattern Parameters_GroupBysItem_FILTEREXTENSION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTEREXTENSION = Parameters_GroupBysItem "FILTER_EXTENSION"

-- | 
pattern Parameters_GroupBysItem_FILTEREXTENSIONSTATUS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTEREXTENSIONSTATUS = Parameters_GroupBysItem "FILTER_EXTENSION_STATUS"

-- | 
pattern Parameters_GroupBysItem_FILTEREXTENSIONTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTEREXTENSIONTYPE = Parameters_GroupBysItem "FILTER_EXTENSION_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERFIRSTPARTYAUDIENCELISTCOST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERFIRSTPARTYAUDIENCELISTCOST = Parameters_GroupBysItem "FILTER_FIRST_PARTY_AUDIENCE_LIST_COST"

-- | 
pattern Parameters_GroupBysItem_FILTERFIRSTPARTYAUDIENCELISTTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERFIRSTPARTYAUDIENCELISTTYPE = Parameters_GroupBysItem "FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERFLOODLIGHTACTIVITY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERFLOODLIGHTACTIVITY = Parameters_GroupBysItem "FILTER_FLOODLIGHT_ACTIVITY"

-- | 
pattern Parameters_GroupBysItem_FILTERFORMAT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERFORMAT = Parameters_GroupBysItem "FILTER_FORMAT"

-- | 
pattern Parameters_GroupBysItem_FILTERGMAILAGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGMAILAGE = Parameters_GroupBysItem "FILTER_GMAIL_AGE"

-- | 
pattern Parameters_GroupBysItem_FILTERGMAILCITY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGMAILCITY = Parameters_GroupBysItem "FILTER_GMAIL_CITY"

-- | 
pattern Parameters_GroupBysItem_FILTERGMAILCOUNTRY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGMAILCOUNTRY = Parameters_GroupBysItem "FILTER_GMAIL_COUNTRY"

-- | 
pattern Parameters_GroupBysItem_FILTERGMAILCOUNTRYNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGMAILCOUNTRYNAME = Parameters_GroupBysItem "FILTER_GMAIL_COUNTRY_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERGMAILDEVICETYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGMAILDEVICETYPE = Parameters_GroupBysItem "FILTER_GMAIL_DEVICE_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERGMAILDEVICETYPENAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGMAILDEVICETYPENAME = Parameters_GroupBysItem "FILTER_GMAIL_DEVICE_TYPE_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERGMAILGENDER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGMAILGENDER = Parameters_GroupBysItem "FILTER_GMAIL_GENDER"

-- | 
pattern Parameters_GroupBysItem_FILTERGMAILREGION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGMAILREGION = Parameters_GroupBysItem "FILTER_GMAIL_REGION"

-- | 
pattern Parameters_GroupBysItem_FILTERGMAILREMARKETINGLIST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERGMAILREMARKETINGLIST = Parameters_GroupBysItem "FILTER_GMAIL_REMARKETING_LIST"

-- | 
pattern Parameters_GroupBysItem_FILTERHOUSEHOLDINCOME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERHOUSEHOLDINCOME = Parameters_GroupBysItem "FILTER_HOUSEHOLD_INCOME"

-- | 
pattern Parameters_GroupBysItem_FILTERIMPRESSIONCOUNTINGMETHOD :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERIMPRESSIONCOUNTINGMETHOD = Parameters_GroupBysItem "FILTER_IMPRESSION_COUNTING_METHOD"

-- | 
pattern Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER = Parameters_GroupBysItem "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER"

-- | 
pattern Parameters_GroupBysItem_FILTERINSERTIONORDERINTEGRATIONCODE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINSERTIONORDERINTEGRATIONCODE = Parameters_GroupBysItem "FILTER_INSERTION_ORDER_INTEGRATION_CODE"

-- | 
pattern Parameters_GroupBysItem_FILTERINSERTIONORDERSTATUS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINSERTIONORDERSTATUS = Parameters_GroupBysItem "FILTER_INSERTION_ORDER_STATUS"

-- | 
pattern Parameters_GroupBysItem_FILTERINTEREST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINTEREST = Parameters_GroupBysItem "FILTER_INTEREST"

-- | 
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCEGROUP :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCEGROUP = Parameters_GroupBysItem "FILTER_INVENTORY_SOURCE_GROUP"

-- | 
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCEGROUPID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCEGROUPID = Parameters_GroupBysItem "FILTER_INVENTORY_SOURCE_GROUP_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCEID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCEID = Parameters_GroupBysItem "FILTER_INVENTORY_SOURCE_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCENAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINVENTORYSOURCENAME = Parameters_GroupBysItem "FILTER_INVENTORY_SOURCE_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERLIFEEVENT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLIFEEVENT = Parameters_GroupBysItem "FILTER_LIFE_EVENT"

-- | 
pattern Parameters_GroupBysItem_FILTERLIFEEVENTS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLIFEEVENTS = Parameters_GroupBysItem "FILTER_LIFE_EVENTS"

-- | 
pattern Parameters_GroupBysItem_FILTERLINEITEMINTEGRATIONCODE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLINEITEMINTEGRATIONCODE = Parameters_GroupBysItem "FILTER_LINE_ITEM_INTEGRATION_CODE"

-- | 
pattern Parameters_GroupBysItem_FILTERLINEITEMNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLINEITEMNAME = Parameters_GroupBysItem "FILTER_LINE_ITEM_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERLINEITEMSTATUS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLINEITEMSTATUS = Parameters_GroupBysItem "FILTER_LINE_ITEM_STATUS"

-- | 
pattern Parameters_GroupBysItem_FILTERMATCHRATIO :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERMATCHRATIO = Parameters_GroupBysItem "FILTER_MATCH_RATIO"

-- | 
pattern Parameters_GroupBysItem_FILTERMEASUREMENTSOURCE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERMEASUREMENTSOURCE = Parameters_GroupBysItem "FILTER_MEASUREMENT_SOURCE"

-- | 
pattern Parameters_GroupBysItem_FILTERMEDIAPLANNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERMEDIAPLANNAME = Parameters_GroupBysItem "FILTER_MEDIA_PLAN_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERPARENTALSTATUS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPARENTALSTATUS = Parameters_GroupBysItem "FILTER_PARENTAL_STATUS"

-- | 
pattern Parameters_GroupBysItem_FILTERPLACEMENTALLYOUTUBECHANNELS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPLACEMENTALLYOUTUBECHANNELS = Parameters_GroupBysItem "FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS"

-- | 
pattern Parameters_GroupBysItem_FILTERPLATFORM :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPLATFORM = Parameters_GroupBysItem "FILTER_PLATFORM"

-- | 
pattern Parameters_GroupBysItem_FILTERPLAYBACKMETHOD :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPLAYBACKMETHOD = Parameters_GroupBysItem "FILTER_PLAYBACK_METHOD"

-- | 
pattern Parameters_GroupBysItem_FILTERPOSITIONINCONTENT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPOSITIONINCONTENT = Parameters_GroupBysItem "FILTER_POSITION_IN_CONTENT"

-- | 
pattern Parameters_GroupBysItem_FILTERPUBLISHERPROPERTY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPUBLISHERPROPERTY = Parameters_GroupBysItem "FILTER_PUBLISHER_PROPERTY"

-- | 
pattern Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYID = Parameters_GroupBysItem "FILTER_PUBLISHER_PROPERTY_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYSECTION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYSECTION = Parameters_GroupBysItem "FILTER_PUBLISHER_PROPERTY_SECTION"

-- | 
pattern Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYSECTIONID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYSECTIONID = Parameters_GroupBysItem "FILTER_PUBLISHER_PROPERTY_SECTION_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERREFUNDREASON :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERREFUNDREASON = Parameters_GroupBysItem "FILTER_REFUND_REASON"

-- | 
pattern Parameters_GroupBysItem_FILTERREMARKETINGLIST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERREMARKETINGLIST = Parameters_GroupBysItem "FILTER_REMARKETING_LIST"

-- | 
pattern Parameters_GroupBysItem_FILTERREWARDED :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERREWARDED = Parameters_GroupBysItem "FILTER_REWARDED"

-- | 
pattern Parameters_GroupBysItem_FILTERSENSITIVECATEGORY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERSENSITIVECATEGORY = Parameters_GroupBysItem "FILTER_SENSITIVE_CATEGORY"

-- | 
pattern Parameters_GroupBysItem_FILTERSERVEDPIXELDENSITY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERSERVEDPIXELDENSITY = Parameters_GroupBysItem "FILTER_SERVED_PIXEL_DENSITY"

-- | 
pattern Parameters_GroupBysItem_FILTERTARGETEDDATAPROVIDERS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTARGETEDDATAPROVIDERS = Parameters_GroupBysItem "FILTER_TARGETED_DATA_PROVIDERS"

-- | 
pattern Parameters_GroupBysItem_FILTERTHIRDPARTYAUDIENCELISTCOST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTHIRDPARTYAUDIENCELISTCOST = Parameters_GroupBysItem "FILTER_THIRD_PARTY_AUDIENCE_LIST_COST"

-- | 
pattern Parameters_GroupBysItem_FILTERTHIRDPARTYAUDIENCELISTTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTHIRDPARTYAUDIENCELISTTYPE = Parameters_GroupBysItem "FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWAD :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWAD = Parameters_GroupBysItem "FILTER_TRUEVIEW_AD"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWADGROUP :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWADGROUP = Parameters_GroupBysItem "FILTER_TRUEVIEW_AD_GROUP"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS = Parameters_GroupBysItem "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID = Parameters_GroupBysItem "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWHOUSEHOLDINCOME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWHOUSEHOLDINCOME = Parameters_GroupBysItem "FILTER_TRUEVIEW_HOUSEHOLD_INCOME"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARCOUNTRYNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWIARCOUNTRYNAME = Parameters_GroupBysItem "FILTER_TRUEVIEW_IAR_COUNTRY_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWREMARKETINGLISTNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWREMARKETINGLISTNAME = Parameters_GroupBysItem "FILTER_TRUEVIEW_REMARKETING_LIST_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERVARIANTID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVARIANTID = Parameters_GroupBysItem "FILTER_VARIANT_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERVARIANTNAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVARIANTNAME = Parameters_GroupBysItem "FILTER_VARIANT_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERVARIANTVERSION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVARIANTVERSION = Parameters_GroupBysItem "FILTER_VARIANT_VERSION"

-- | 
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZE = Parameters_GroupBysItem "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE"

-- | 
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPOSITION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPOSITION = Parameters_GroupBysItem "FILTER_VERIFICATION_VIDEO_POSITION"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEOCOMPANIONCREATIVESIZE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEOCOMPANIONCREATIVESIZE = Parameters_GroupBysItem "FILTER_VIDEO_COMPANION_CREATIVE_SIZE"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEOCONTINUOUSPLAY :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEOCONTINUOUSPLAY = Parameters_GroupBysItem "FILTER_VIDEO_CONTINUOUS_PLAY"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEODURATION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEODURATION = Parameters_GroupBysItem "FILTER_VIDEO_DURATION"

-- | 
pattern Parameters_GroupBysItem_FILTERYOUTUBEADAPTEDAUDIENCELIST :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERYOUTUBEADAPTEDAUDIENCELIST = Parameters_GroupBysItem "FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST"

-- | 
pattern Parameters_GroupBysItem_FILTERYOUTUBEADVIDEO :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERYOUTUBEADVIDEO = Parameters_GroupBysItem "FILTER_YOUTUBE_AD_VIDEO"

-- | 
pattern Parameters_GroupBysItem_FILTERYOUTUBEADVIDEOID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERYOUTUBEADVIDEOID = Parameters_GroupBysItem "FILTER_YOUTUBE_AD_VIDEO_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERYOUTUBECHANNEL :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERYOUTUBECHANNEL = Parameters_GroupBysItem "FILTER_YOUTUBE_CHANNEL"

-- | 
pattern Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER = Parameters_GroupBysItem "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER"

-- | 
pattern Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER = Parameters_GroupBysItem "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER"

-- | 
pattern Parameters_GroupBysItem_FILTERYOUTUBEVIDEO :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERYOUTUBEVIDEO = Parameters_GroupBysItem "FILTER_YOUTUBE_VIDEO"

-- | 
pattern Parameters_GroupBysItem_FILTERZIPPOSTALCODE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERZIPPOSTALCODE = Parameters_GroupBysItem "FILTER_ZIP_POSTAL_CODE"

-- | 
pattern Parameters_GroupBysItem_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS = Parameters_GroupBysItem "FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWPLACEMENTID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWPLACEMENTID = Parameters_GroupBysItem "FILTER_TRUEVIEW_PLACEMENT_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERPATHPATTERNID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPATHPATTERNID = Parameters_GroupBysItem "FILTER_PATH_PATTERN_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERPATHEVENTINDEX :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERPATHEVENTINDEX = Parameters_GroupBysItem "FILTER_PATH_EVENT_INDEX"

-- | 
pattern Parameters_GroupBysItem_FILTEREVENTTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTEREVENTTYPE = Parameters_GroupBysItem "FILTER_EVENT_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERCHANNELGROUPING :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCHANNELGROUPING = Parameters_GroupBysItem "FILTER_CHANNEL_GROUPING"

-- | 
pattern Parameters_GroupBysItem_FILTEROMSDKAVAILABLE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTEROMSDKAVAILABLE = Parameters_GroupBysItem "FILTER_OM_SDK_AVAILABLE"

-- | 
pattern Parameters_GroupBysItem_FILTERDATASOURCE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERDATASOURCE = Parameters_GroupBysItem "FILTER_DATA_SOURCE"

-- | 
pattern Parameters_GroupBysItem_FILTERCM360PLACEMENTID :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERCM360PLACEMENTID = Parameters_GroupBysItem "FILTER_CM360_PLACEMENT_ID"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCLICKTYPENAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWCLICKTYPENAME = Parameters_GroupBysItem "FILTER_TRUEVIEW_CLICK_TYPE_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERTRUEVIEWADTYPENAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERTRUEVIEWADTYPENAME = Parameters_GroupBysItem "FILTER_TRUEVIEW_AD_TYPE_NAME"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEOCONTENTDURATION :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEOCONTENTDURATION = Parameters_GroupBysItem "FILTER_VIDEO_CONTENT_DURATION"

-- | 
pattern Parameters_GroupBysItem_FILTERMATCHEDGENRETARGET :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERMATCHEDGENRETARGET = Parameters_GroupBysItem "FILTER_MATCHED_GENRE_TARGET"

-- | 
pattern Parameters_GroupBysItem_FILTERVIDEOCONTENTLIVESTREAM :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVIDEOCONTENTLIVESTREAM = Parameters_GroupBysItem "FILTER_VIDEO_CONTENT_LIVE_STREAM"

-- | 
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTTYPE = Parameters_GroupBysItem "FILTER_BUDGET_SEGMENT_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTBUDGET :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTBUDGET = Parameters_GroupBysItem "FILTER_BUDGET_SEGMENT_BUDGET"

-- | 
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTSTARTDATE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTSTARTDATE = Parameters_GroupBysItem "FILTER_BUDGET_SEGMENT_START_DATE"

-- | 
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTENDDATE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTENDDATE = Parameters_GroupBysItem "FILTER_BUDGET_SEGMENT_END_DATE"

-- | 
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTPACINGPERCENTAGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERBUDGETSEGMENTPACINGPERCENTAGE = Parameters_GroupBysItem "FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE"

-- | 
pattern Parameters_GroupBysItem_FILTERLINEITEMBUDGET :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLINEITEMBUDGET = Parameters_GroupBysItem "FILTER_LINE_ITEM_BUDGET"

-- | 
pattern Parameters_GroupBysItem_FILTERLINEITEMSTARTDATE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLINEITEMSTARTDATE = Parameters_GroupBysItem "FILTER_LINE_ITEM_START_DATE"

-- | 
pattern Parameters_GroupBysItem_FILTERLINEITEMENDDATE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLINEITEMENDDATE = Parameters_GroupBysItem "FILTER_LINE_ITEM_END_DATE"

-- | 
pattern Parameters_GroupBysItem_FILTERINSERTIONORDERGOALTYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINSERTIONORDERGOALTYPE = Parameters_GroupBysItem "FILTER_INSERTION_ORDER_GOAL_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERLINEITEMPACINGPERCENTAGE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERLINEITEMPACINGPERCENTAGE = Parameters_GroupBysItem "FILTER_LINE_ITEM_PACING_PERCENTAGE"

-- | 
pattern Parameters_GroupBysItem_FILTERINSERTIONORDERGOALVALUE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERINSERTIONORDERGOALVALUE = Parameters_GroupBysItem "FILTER_INSERTION_ORDER_GOAL_VALUE"

-- | 
pattern Parameters_GroupBysItem_FILTEROMIDCAPABLE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTEROMIDCAPABLE = Parameters_GroupBysItem "FILTER_OMID_CAPABLE"

-- | 
pattern Parameters_GroupBysItem_FILTERVENDORMEASUREMENTMODE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVENDORMEASUREMENTMODE = Parameters_GroupBysItem "FILTER_VENDOR_MEASUREMENT_MODE"

-- | 
pattern Parameters_GroupBysItem_FILTERIMPRESSIONLOSSREJECTIONREASON :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERIMPRESSIONLOSSREJECTIONREASON = Parameters_GroupBysItem "FILTER_IMPRESSION_LOSS_REJECTION_REASON"

-- | 
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZESTART :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZESTART = Parameters_GroupBysItem "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_START"

-- | 
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE = Parameters_GroupBysItem "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_FIRST_QUARTILE"

-- | 
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT = Parameters_GroupBysItem "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_MID_POINT"

-- | 
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE = Parameters_GroupBysItem "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_THIRD_QUARTILE"

-- | 
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE = Parameters_GroupBysItem "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_COMPLETE"

-- | 
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEORESIZED :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVERIFICATIONVIDEORESIZED = Parameters_GroupBysItem "FILTER_VERIFICATION_VIDEO_RESIZED"

-- | 
pattern Parameters_GroupBysItem_FILTERVERIFICATIONAUDIBILITYSTART :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVERIFICATIONAUDIBILITYSTART = Parameters_GroupBysItem "FILTER_VERIFICATION_AUDIBILITY_START"

-- | 
pattern Parameters_GroupBysItem_FILTERVERIFICATIONAUDIBILITYCOMPLETE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERVERIFICATIONAUDIBILITYCOMPLETE = Parameters_GroupBysItem "FILTER_VERIFICATION_AUDIBILITY_COMPLETE"

-- | 
pattern Parameters_GroupBysItem_FILTERMEDIATYPE :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERMEDIATYPE = Parameters_GroupBysItem "FILTER_MEDIA_TYPE"

-- | 
pattern Parameters_GroupBysItem_FILTERAUDIOFEEDTYPENAME :: Parameters_GroupBysItem
pattern Parameters_GroupBysItem_FILTERAUDIOFEEDTYPENAME = Parameters_GroupBysItem "FILTER_AUDIO_FEED_TYPE_NAME"

{-# COMPLETE
  Parameters_GroupBysItem_FILTERUNKNOWN,
  Parameters_GroupBysItem_FILTERDATE,
  Parameters_GroupBysItem_FILTERDAYOFWEEK,
  Parameters_GroupBysItem_FILTERWEEK,
  Parameters_GroupBysItem_FILTERMONTH,
  Parameters_GroupBysItem_FILTERYEAR,
  Parameters_GroupBysItem_FILTERTIMEOFDAY,
  Parameters_GroupBysItem_FILTERCONVERSIONDELAY,
  Parameters_GroupBysItem_FILTERCREATIVEID,
  Parameters_GroupBysItem_FILTERCREATIVESIZE,
  Parameters_GroupBysItem_FILTERCREATIVETYPE,
  Parameters_GroupBysItem_FILTEREXCHANGEID,
  Parameters_GroupBysItem_FILTERADPOSITION,
  Parameters_GroupBysItem_FILTERPUBLICINVENTORY,
  Parameters_GroupBysItem_FILTERINVENTORYSOURCE,
  Parameters_GroupBysItem_FILTERCITY,
  Parameters_GroupBysItem_FILTERREGION,
  Parameters_GroupBysItem_FILTERDMA,
  Parameters_GroupBysItem_FILTERCOUNTRY,
  Parameters_GroupBysItem_FILTERSITEID,
  Parameters_GroupBysItem_FILTERCHANNELID,
  Parameters_GroupBysItem_FILTERPARTNER,
  Parameters_GroupBysItem_FILTERADVERTISER,
  Parameters_GroupBysItem_FILTERINSERTIONORDER,
  Parameters_GroupBysItem_FILTERLINEITEM,
  Parameters_GroupBysItem_FILTERPARTNERCURRENCY,
  Parameters_GroupBysItem_FILTERADVERTISERCURRENCY,
  Parameters_GroupBysItem_FILTERADVERTISERTIMEZONE,
  Parameters_GroupBysItem_FILTERLINEITEMTYPE,
  Parameters_GroupBysItem_FILTERUSERLIST,
  Parameters_GroupBysItem_FILTERUSERLISTFIRSTPARTY,
  Parameters_GroupBysItem_FILTERUSERLISTTHIRDPARTY,
  Parameters_GroupBysItem_FILTERTARGETEDUSERLIST,
  Parameters_GroupBysItem_FILTERDATAPROVIDER,
  Parameters_GroupBysItem_FILTERORDERID,
  Parameters_GroupBysItem_FILTERVIDEOPLAYERSIZE,
  Parameters_GroupBysItem_FILTERVIDEODURATIONSECONDS,
  Parameters_GroupBysItem_FILTERKEYWORD,
  Parameters_GroupBysItem_FILTERPAGECATEGORY,
  Parameters_GroupBysItem_FILTERCAMPAIGNDAILYFREQUENCY,
  Parameters_GroupBysItem_FILTERLINEITEMDAILYFREQUENCY,
  Parameters_GroupBysItem_FILTERLINEITEMLIFETIMEFREQUENCY,
  Parameters_GroupBysItem_FILTEROS,
  Parameters_GroupBysItem_FILTERBROWSER,
  Parameters_GroupBysItem_FILTERCARRIER,
  Parameters_GroupBysItem_FILTERSITELANGUAGE,
  Parameters_GroupBysItem_FILTERINVENTORYFORMAT,
  Parameters_GroupBysItem_FILTERZIPCODE,
  Parameters_GroupBysItem_FILTERVIDEORATINGTIER,
  Parameters_GroupBysItem_FILTERVIDEOFORMATSUPPORT,
  Parameters_GroupBysItem_FILTERVIDEOSKIPPABLESUPPORT,
  Parameters_GroupBysItem_FILTERVIDEOCREATIVEDURATION,
  Parameters_GroupBysItem_FILTERPAGELAYOUT,
  Parameters_GroupBysItem_FILTERVIDEOADPOSITIONINSTREAM,
  Parameters_GroupBysItem_FILTERAGE,
  Parameters_GroupBysItem_FILTERGENDER,
  Parameters_GroupBysItem_FILTERQUARTER,
  Parameters_GroupBysItem_FILTERTRUEVIEWCONVERSIONTYPE,
  Parameters_GroupBysItem_FILTERMOBILEGEO,
  Parameters_GroupBysItem_FILTERMRAIDSUPPORT,
  Parameters_GroupBysItem_FILTERACTIVEVIEWEXPECTEDVIEWABILITY,
  Parameters_GroupBysItem_FILTERVIDEOCREATIVEDURATIONSKIPPABLE,
  Parameters_GroupBysItem_FILTERNIELSENCOUNTRYCODE,
  Parameters_GroupBysItem_FILTERNIELSENDEVICEID,
  Parameters_GroupBysItem_FILTERNIELSENGENDER,
  Parameters_GroupBysItem_FILTERNIELSENAGE,
  Parameters_GroupBysItem_FILTERINVENTORYSOURCETYPE,
  Parameters_GroupBysItem_FILTERCREATIVEWIDTH,
  Parameters_GroupBysItem_FILTERCREATIVEHEIGHT,
  Parameters_GroupBysItem_FILTERDFPORDERID,
  Parameters_GroupBysItem_FILTERTRUEVIEWAGE,
  Parameters_GroupBysItem_FILTERTRUEVIEWGENDER,
  Parameters_GroupBysItem_FILTERTRUEVIEWPARENTALSTATUS,
  Parameters_GroupBysItem_FILTERTRUEVIEWREMARKETINGLIST,
  Parameters_GroupBysItem_FILTERTRUEVIEWINTEREST,
  Parameters_GroupBysItem_FILTERTRUEVIEWADGROUPID,
  Parameters_GroupBysItem_FILTERTRUEVIEWADGROUPADID,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARLANGUAGE,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARGENDER,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARAGE,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARCATEGORY,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARCOUNTRY,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARCITY,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARREGION,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARZIPCODE,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARREMARKETINGLIST,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARINTEREST,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARPARENTALSTATUS,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARTIMEOFDAY,
  Parameters_GroupBysItem_FILTERTRUEVIEWCUSTOMAFFINITY,
  Parameters_GroupBysItem_FILTERTRUEVIEWCATEGORY,
  Parameters_GroupBysItem_FILTERTRUEVIEWKEYWORD,
  Parameters_GroupBysItem_FILTERTRUEVIEWPLACEMENT,
  Parameters_GroupBysItem_FILTERTRUEVIEWURL,
  Parameters_GroupBysItem_FILTERTRUEVIEWCOUNTRY,
  Parameters_GroupBysItem_FILTERTRUEVIEWREGION,
  Parameters_GroupBysItem_FILTERTRUEVIEWCITY,
  Parameters_GroupBysItem_FILTERTRUEVIEWDMA,
  Parameters_GroupBysItem_FILTERTRUEVIEWZIPCODE,
  Parameters_GroupBysItem_FILTERNOTSUPPORTED,
  Parameters_GroupBysItem_FILTERMEDIAPLAN,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARYOUTUBECHANNEL,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARYOUTUBEVIDEO,
  Parameters_GroupBysItem_FILTERSKIPPABLESUPPORT,
  Parameters_GroupBysItem_FILTERCOMPANIONCREATIVEID,
  Parameters_GroupBysItem_FILTERBUDGETSEGMENTDESCRIPTION,
  Parameters_GroupBysItem_FILTERFLOODLIGHTACTIVITYID,
  Parameters_GroupBysItem_FILTERDEVICEMODEL,
  Parameters_GroupBysItem_FILTERDEVICEMAKE,
  Parameters_GroupBysItem_FILTERDEVICETYPE,
  Parameters_GroupBysItem_FILTERCREATIVEATTRIBUTE,
  Parameters_GroupBysItem_FILTERINVENTORYCOMMITMENTTYPE,
  Parameters_GroupBysItem_FILTERINVENTORYRATETYPE,
  Parameters_GroupBysItem_FILTERINVENTORYDELIVERYMETHOD,
  Parameters_GroupBysItem_FILTERINVENTORYSOURCEEXTERNALID,
  Parameters_GroupBysItem_FILTERAUTHORIZEDSELLERSTATE,
  Parameters_GroupBysItem_FILTERVIDEODURATIONSECONDSRANGE,
  Parameters_GroupBysItem_FILTERPARTNERNAME,
  Parameters_GroupBysItem_FILTERPARTNERSTATUS,
  Parameters_GroupBysItem_FILTERADVERTISERNAME,
  Parameters_GroupBysItem_FILTERADVERTISERINTEGRATIONCODE,
  Parameters_GroupBysItem_FILTERADVERTISERINTEGRATIONSTATUS,
  Parameters_GroupBysItem_FILTERCARRIERNAME,
  Parameters_GroupBysItem_FILTERCHANNELNAME,
  Parameters_GroupBysItem_FILTERCITYNAME,
  Parameters_GroupBysItem_FILTERCOMPANIONCREATIVENAME,
  Parameters_GroupBysItem_FILTERUSERLISTFIRSTPARTYNAME,
  Parameters_GroupBysItem_FILTERUSERLISTTHIRDPARTYNAME,
  Parameters_GroupBysItem_FILTERNIELSENRESTATEMENTDATE,
  Parameters_GroupBysItem_FILTERNIELSENDATERANGE,
  Parameters_GroupBysItem_FILTERINSERTIONORDERNAME,
  Parameters_GroupBysItem_FILTERREGIONNAME,
  Parameters_GroupBysItem_FILTERDMANAME,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARREGIONNAME,
  Parameters_GroupBysItem_FILTERTRUEVIEWDMANAME,
  Parameters_GroupBysItem_FILTERTRUEVIEWREGIONNAME,
  Parameters_GroupBysItem_FILTERACTIVEVIEWCUSTOMMETRICID,
  Parameters_GroupBysItem_FILTERACTIVEVIEWCUSTOMMETRICNAME,
  Parameters_GroupBysItem_FILTERADTYPE,
  Parameters_GroupBysItem_FILTERALGORITHM,
  Parameters_GroupBysItem_FILTERALGORITHMID,
  Parameters_GroupBysItem_FILTERAMPPAGEREQUEST,
  Parameters_GroupBysItem_FILTERANONYMOUSINVENTORYMODELING,
  Parameters_GroupBysItem_FILTERAPPURL,
  Parameters_GroupBysItem_FILTERAPPURLEXCLUDED,
  Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLIST,
  Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLISTCOST,
  Parameters_GroupBysItem_FILTERATTRIBUTEDUSERLISTTYPE,
  Parameters_GroupBysItem_FILTERATTRIBUTIONMODEL,
  Parameters_GroupBysItem_FILTERAUDIENCELIST,
  Parameters_GroupBysItem_FILTERAUDIENCELISTCOST,
  Parameters_GroupBysItem_FILTERAUDIENCELISTTYPE,
  Parameters_GroupBysItem_FILTERAUDIENCENAME,
  Parameters_GroupBysItem_FILTERAUDIENCETYPE,
  Parameters_GroupBysItem_FILTERBILLABLEOUTCOME,
  Parameters_GroupBysItem_FILTERBRANDLIFTTYPE,
  Parameters_GroupBysItem_FILTERCHANNELTYPE,
  Parameters_GroupBysItem_FILTERCMPLACEMENTID,
  Parameters_GroupBysItem_FILTERCONVERSIONSOURCE,
  Parameters_GroupBysItem_FILTERCONVERSIONSOURCEID,
  Parameters_GroupBysItem_FILTERCOUNTRYID,
  Parameters_GroupBysItem_FILTERCREATIVE,
  Parameters_GroupBysItem_FILTERCREATIVEASSET,
  Parameters_GroupBysItem_FILTERCREATIVEINTEGRATIONCODE,
  Parameters_GroupBysItem_FILTERCREATIVERENDEREDINAMP,
  Parameters_GroupBysItem_FILTERCREATIVESOURCE,
  Parameters_GroupBysItem_FILTERCREATIVESTATUS,
  Parameters_GroupBysItem_FILTERDATAPROVIDERNAME,
  Parameters_GroupBysItem_FILTERDETAILEDDEMOGRAPHICS,
  Parameters_GroupBysItem_FILTERDETAILEDDEMOGRAPHICSID,
  Parameters_GroupBysItem_FILTERDEVICE,
  Parameters_GroupBysItem_FILTERGAMINSERTIONORDER,
  Parameters_GroupBysItem_FILTERGAMLINEITEM,
  Parameters_GroupBysItem_FILTERGAMLINEITEMID,
  Parameters_GroupBysItem_FILTERDIGITALCONTENTLABEL,
  Parameters_GroupBysItem_FILTERDOMAIN,
  Parameters_GroupBysItem_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST,
  Parameters_GroupBysItem_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST,
  Parameters_GroupBysItem_FILTEREXCHANGE,
  Parameters_GroupBysItem_FILTEREXCHANGECODE,
  Parameters_GroupBysItem_FILTEREXTENSION,
  Parameters_GroupBysItem_FILTEREXTENSIONSTATUS,
  Parameters_GroupBysItem_FILTEREXTENSIONTYPE,
  Parameters_GroupBysItem_FILTERFIRSTPARTYAUDIENCELISTCOST,
  Parameters_GroupBysItem_FILTERFIRSTPARTYAUDIENCELISTTYPE,
  Parameters_GroupBysItem_FILTERFLOODLIGHTACTIVITY,
  Parameters_GroupBysItem_FILTERFORMAT,
  Parameters_GroupBysItem_FILTERGMAILAGE,
  Parameters_GroupBysItem_FILTERGMAILCITY,
  Parameters_GroupBysItem_FILTERGMAILCOUNTRY,
  Parameters_GroupBysItem_FILTERGMAILCOUNTRYNAME,
  Parameters_GroupBysItem_FILTERGMAILDEVICETYPE,
  Parameters_GroupBysItem_FILTERGMAILDEVICETYPENAME,
  Parameters_GroupBysItem_FILTERGMAILGENDER,
  Parameters_GroupBysItem_FILTERGMAILREGION,
  Parameters_GroupBysItem_FILTERGMAILREMARKETINGLIST,
  Parameters_GroupBysItem_FILTERHOUSEHOLDINCOME,
  Parameters_GroupBysItem_FILTERIMPRESSIONCOUNTINGMETHOD,
  Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER,
  Parameters_GroupBysItem_FILTERINSERTIONORDERINTEGRATIONCODE,
  Parameters_GroupBysItem_FILTERINSERTIONORDERSTATUS,
  Parameters_GroupBysItem_FILTERINTEREST,
  Parameters_GroupBysItem_FILTERINVENTORYSOURCEGROUP,
  Parameters_GroupBysItem_FILTERINVENTORYSOURCEGROUPID,
  Parameters_GroupBysItem_FILTERINVENTORYSOURCEID,
  Parameters_GroupBysItem_FILTERINVENTORYSOURCENAME,
  Parameters_GroupBysItem_FILTERLIFEEVENT,
  Parameters_GroupBysItem_FILTERLIFEEVENTS,
  Parameters_GroupBysItem_FILTERLINEITEMINTEGRATIONCODE,
  Parameters_GroupBysItem_FILTERLINEITEMNAME,
  Parameters_GroupBysItem_FILTERLINEITEMSTATUS,
  Parameters_GroupBysItem_FILTERMATCHRATIO,
  Parameters_GroupBysItem_FILTERMEASUREMENTSOURCE,
  Parameters_GroupBysItem_FILTERMEDIAPLANNAME,
  Parameters_GroupBysItem_FILTERPARENTALSTATUS,
  Parameters_GroupBysItem_FILTERPLACEMENTALLYOUTUBECHANNELS,
  Parameters_GroupBysItem_FILTERPLATFORM,
  Parameters_GroupBysItem_FILTERPLAYBACKMETHOD,
  Parameters_GroupBysItem_FILTERPOSITIONINCONTENT,
  Parameters_GroupBysItem_FILTERPUBLISHERPROPERTY,
  Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYID,
  Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYSECTION,
  Parameters_GroupBysItem_FILTERPUBLISHERPROPERTYSECTIONID,
  Parameters_GroupBysItem_FILTERREFUNDREASON,
  Parameters_GroupBysItem_FILTERREMARKETINGLIST,
  Parameters_GroupBysItem_FILTERREWARDED,
  Parameters_GroupBysItem_FILTERSENSITIVECATEGORY,
  Parameters_GroupBysItem_FILTERSERVEDPIXELDENSITY,
  Parameters_GroupBysItem_FILTERTARGETEDDATAPROVIDERS,
  Parameters_GroupBysItem_FILTERTHIRDPARTYAUDIENCELISTCOST,
  Parameters_GroupBysItem_FILTERTHIRDPARTYAUDIENCELISTTYPE,
  Parameters_GroupBysItem_FILTERTRUEVIEWAD,
  Parameters_GroupBysItem_FILTERTRUEVIEWADGROUP,
  Parameters_GroupBysItem_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS,
  Parameters_GroupBysItem_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID,
  Parameters_GroupBysItem_FILTERTRUEVIEWHOUSEHOLDINCOME,
  Parameters_GroupBysItem_FILTERTRUEVIEWIARCOUNTRYNAME,
  Parameters_GroupBysItem_FILTERTRUEVIEWREMARKETINGLISTNAME,
  Parameters_GroupBysItem_FILTERVARIANTID,
  Parameters_GroupBysItem_FILTERVARIANTNAME,
  Parameters_GroupBysItem_FILTERVARIANTVERSION,
  Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZE,
  Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPOSITION,
  Parameters_GroupBysItem_FILTERVIDEOCOMPANIONCREATIVESIZE,
  Parameters_GroupBysItem_FILTERVIDEOCONTINUOUSPLAY,
  Parameters_GroupBysItem_FILTERVIDEODURATION,
  Parameters_GroupBysItem_FILTERYOUTUBEADAPTEDAUDIENCELIST,
  Parameters_GroupBysItem_FILTERYOUTUBEADVIDEO,
  Parameters_GroupBysItem_FILTERYOUTUBEADVIDEOID,
  Parameters_GroupBysItem_FILTERYOUTUBECHANNEL,
  Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER,
  Parameters_GroupBysItem_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER,
  Parameters_GroupBysItem_FILTERYOUTUBEVIDEO,
  Parameters_GroupBysItem_FILTERZIPPOSTALCODE,
  Parameters_GroupBysItem_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS,
  Parameters_GroupBysItem_FILTERTRUEVIEWPLACEMENTID,
  Parameters_GroupBysItem_FILTERPATHPATTERNID,
  Parameters_GroupBysItem_FILTERPATHEVENTINDEX,
  Parameters_GroupBysItem_FILTEREVENTTYPE,
  Parameters_GroupBysItem_FILTERCHANNELGROUPING,
  Parameters_GroupBysItem_FILTEROMSDKAVAILABLE,
  Parameters_GroupBysItem_FILTERDATASOURCE,
  Parameters_GroupBysItem_FILTERCM360PLACEMENTID,
  Parameters_GroupBysItem_FILTERTRUEVIEWCLICKTYPENAME,
  Parameters_GroupBysItem_FILTERTRUEVIEWADTYPENAME,
  Parameters_GroupBysItem_FILTERVIDEOCONTENTDURATION,
  Parameters_GroupBysItem_FILTERMATCHEDGENRETARGET,
  Parameters_GroupBysItem_FILTERVIDEOCONTENTLIVESTREAM,
  Parameters_GroupBysItem_FILTERBUDGETSEGMENTTYPE,
  Parameters_GroupBysItem_FILTERBUDGETSEGMENTBUDGET,
  Parameters_GroupBysItem_FILTERBUDGETSEGMENTSTARTDATE,
  Parameters_GroupBysItem_FILTERBUDGETSEGMENTENDDATE,
  Parameters_GroupBysItem_FILTERBUDGETSEGMENTPACINGPERCENTAGE,
  Parameters_GroupBysItem_FILTERLINEITEMBUDGET,
  Parameters_GroupBysItem_FILTERLINEITEMSTARTDATE,
  Parameters_GroupBysItem_FILTERLINEITEMENDDATE,
  Parameters_GroupBysItem_FILTERINSERTIONORDERGOALTYPE,
  Parameters_GroupBysItem_FILTERLINEITEMPACINGPERCENTAGE,
  Parameters_GroupBysItem_FILTERINSERTIONORDERGOALVALUE,
  Parameters_GroupBysItem_FILTEROMIDCAPABLE,
  Parameters_GroupBysItem_FILTERVENDORMEASUREMENTMODE,
  Parameters_GroupBysItem_FILTERIMPRESSIONLOSSREJECTIONREASON,
  Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZESTART,
  Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE,
  Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT,
  Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE,
  Parameters_GroupBysItem_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE,
  Parameters_GroupBysItem_FILTERVERIFICATIONVIDEORESIZED,
  Parameters_GroupBysItem_FILTERVERIFICATIONAUDIBILITYSTART,
  Parameters_GroupBysItem_FILTERVERIFICATIONAUDIBILITYCOMPLETE,
  Parameters_GroupBysItem_FILTERMEDIATYPE,
  Parameters_GroupBysItem_FILTERAUDIOFEEDTYPENAME,
  Parameters_GroupBysItem #-}

newtype Parameters_MetricsItem = Parameters_MetricsItem { fromParameters_MetricsItem :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Parameters_MetricsItem_METRICUNKNOWN :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICUNKNOWN = Parameters_MetricsItem "METRIC_UNKNOWN"

-- | 
pattern Parameters_MetricsItem_METRICIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICIMPRESSIONS = Parameters_MetricsItem "METRIC_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICCLICKS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCLICKS = Parameters_MetricsItem "METRIC_CLICKS"

-- | 
pattern Parameters_MetricsItem_METRICLASTIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICLASTIMPRESSIONS = Parameters_MetricsItem "METRIC_LAST_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICLASTCLICKS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICLASTCLICKS = Parameters_MetricsItem "METRIC_LAST_CLICKS"

-- | 
pattern Parameters_MetricsItem_METRICTOTALCONVERSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALCONVERSIONS = Parameters_MetricsItem "METRIC_TOTAL_CONVERSIONS"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_COST_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTUSD = Parameters_MetricsItem "METRIC_MEDIA_COST_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTPARTNER = Parameters_MetricsItem "METRIC_MEDIA_COST_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICDATACOSTADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICDATACOSTADVERTISER = Parameters_MetricsItem "METRIC_DATA_COST_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICDATACOSTUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICDATACOSTUSD = Parameters_MetricsItem "METRIC_DATA_COST_USD"

-- | 
pattern Parameters_MetricsItem_METRICDATACOSTPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICDATACOSTPARTNER = Parameters_MetricsItem "METRIC_DATA_COST_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE1ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE1ADVERTISER = Parameters_MetricsItem "METRIC_CPM_FEE1_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE1USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE1USD = Parameters_MetricsItem "METRIC_CPM_FEE1_USD"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE1PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE1PARTNER = Parameters_MetricsItem "METRIC_CPM_FEE1_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE2ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE2ADVERTISER = Parameters_MetricsItem "METRIC_CPM_FEE2_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE2USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE2USD = Parameters_MetricsItem "METRIC_CPM_FEE2_USD"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE2PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE2PARTNER = Parameters_MetricsItem "METRIC_CPM_FEE2_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE1ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE1ADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_FEE1_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE1USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE1USD = Parameters_MetricsItem "METRIC_MEDIA_FEE1_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE1PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE1PARTNER = Parameters_MetricsItem "METRIC_MEDIA_FEE1_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE2ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE2ADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_FEE2_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE2USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE2USD = Parameters_MetricsItem "METRIC_MEDIA_FEE2_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE2PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE2PARTNER = Parameters_MetricsItem "METRIC_MEDIA_FEE2_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEADVERTISER = Parameters_MetricsItem "METRIC_REVENUE_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEUSD = Parameters_MetricsItem "METRIC_REVENUE_USD"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEPARTNER = Parameters_MetricsItem "METRIC_REVENUE_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICPROFITADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROFITADVERTISER = Parameters_MetricsItem "METRIC_PROFIT_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICPROFITUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROFITUSD = Parameters_MetricsItem "METRIC_PROFIT_USD"

-- | 
pattern Parameters_MetricsItem_METRICPROFITPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROFITPARTNER = Parameters_MetricsItem "METRIC_PROFIT_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICPROFITMARGIN :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROFITMARGIN = Parameters_MetricsItem "METRIC_PROFIT_MARGIN"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTUSD = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_USD"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTPARTNER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTADVERTISER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICBILLABLECOSTUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBILLABLECOSTUSD = Parameters_MetricsItem "METRIC_BILLABLE_COST_USD"

-- | 
pattern Parameters_MetricsItem_METRICBILLABLECOSTPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBILLABLECOSTPARTNER = Parameters_MetricsItem "METRIC_BILLABLE_COST_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICBILLABLECOSTADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBILLABLECOSTADVERTISER = Parameters_MetricsItem "METRIC_BILLABLE_COST_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICPLATFORMFEEUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPLATFORMFEEUSD = Parameters_MetricsItem "METRIC_PLATFORM_FEE_USD"

-- | 
pattern Parameters_MetricsItem_METRICPLATFORMFEEPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPLATFORMFEEPARTNER = Parameters_MetricsItem "METRIC_PLATFORM_FEE_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICPLATFORMFEEADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPLATFORMFEEADVERTISER = Parameters_MetricsItem "METRIC_PLATFORM_FEE_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICVIDEOCOMPLETIONRATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIDEOCOMPLETIONRATE = Parameters_MetricsItem "METRIC_VIDEO_COMPLETION_RATE"

-- | 
pattern Parameters_MetricsItem_METRICPROFITECPMADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROFITECPMADVERTISER = Parameters_MetricsItem "METRIC_PROFIT_ECPM_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICPROFITECPMUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROFITECPMUSD = Parameters_MetricsItem "METRIC_PROFIT_ECPM_USD"

-- | 
pattern Parameters_MetricsItem_METRICPROFITECPMPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROFITECPMPARTNER = Parameters_MetricsItem "METRIC_PROFIT_ECPM_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPMADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPMADVERTISER = Parameters_MetricsItem "METRIC_REVENUE_ECPM_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPMUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPMUSD = Parameters_MetricsItem "METRIC_REVENUE_ECPM_USD"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPMPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPMPARTNER = Parameters_MetricsItem "METRIC_REVENUE_ECPM_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPCADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPCADVERTISER = Parameters_MetricsItem "METRIC_REVENUE_ECPC_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPCUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPCUSD = Parameters_MetricsItem "METRIC_REVENUE_ECPC_USD"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPCPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPCPARTNER = Parameters_MetricsItem "METRIC_REVENUE_ECPC_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPAADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPAADVERTISER = Parameters_MetricsItem "METRIC_REVENUE_ECPA_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPAUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPAUSD = Parameters_MetricsItem "METRIC_REVENUE_ECPA_USD"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPAPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPAPARTNER = Parameters_MetricsItem "METRIC_REVENUE_ECPA_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPAPVADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPAPVADVERTISER = Parameters_MetricsItem "METRIC_REVENUE_ECPAPV_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPAPVUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPAPVUSD = Parameters_MetricsItem "METRIC_REVENUE_ECPAPV_USD"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPAPVPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPAPVPARTNER = Parameters_MetricsItem "METRIC_REVENUE_ECPAPV_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPAPCADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPAPCADVERTISER = Parameters_MetricsItem "METRIC_REVENUE_ECPAPC_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPAPCUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPAPCUSD = Parameters_MetricsItem "METRIC_REVENUE_ECPAPC_USD"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPAPCPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPAPCPARTNER = Parameters_MetricsItem "METRIC_REVENUE_ECPAPC_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPMADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPMADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPM_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPMUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPMUSD = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPM_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPMPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPMPARTNER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPM_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPC_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCUSD = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPC_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCPARTNER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPC_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPA_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAUSD = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPA_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPARTNER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPA_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPVADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPVADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPAPV_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPVUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPVUSD = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPAPV_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPVPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPVPARTNER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPAPV_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPCADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPCADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPAPC_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPCUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPCUSD = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPAPC_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPCPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPAPCPARTNER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPAPC_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMADVERTISER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPM_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMUSD = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPM_USD"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMPARTNER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPM_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCADVERTISER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPC_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCUSD = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPC_USD"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCPARTNER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPC_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAADVERTISER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPA_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAUSD = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPA_USD"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPARTNER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPA_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVADVERTISER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPAPV_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVUSD = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPAPV_USD"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVPARTNER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPAPV_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCADVERTISER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPAPC_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCUSD = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPAPC_USD"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCPARTNER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPAPC_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOPLAYS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOPLAYS = Parameters_MetricsItem "METRIC_RICH_MEDIA_VIDEO_PLAYS"

-- | 
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOCOMPLETIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOCOMPLETIONS = Parameters_MetricsItem "METRIC_RICH_MEDIA_VIDEO_COMPLETIONS"

-- | 
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOPAUSES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOPAUSES = Parameters_MetricsItem "METRIC_RICH_MEDIA_VIDEO_PAUSES"

-- | 
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOMUTES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOMUTES = Parameters_MetricsItem "METRIC_RICH_MEDIA_VIDEO_MUTES"

-- | 
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOMIDPOINTS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOMIDPOINTS = Parameters_MetricsItem "METRIC_RICH_MEDIA_VIDEO_MIDPOINTS"

-- | 
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOFULLSCREENS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOFULLSCREENS = Parameters_MetricsItem "METRIC_RICH_MEDIA_VIDEO_FULL_SCREENS"

-- | 
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOFIRSTQUARTILECOMPLETES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOFIRSTQUARTILECOMPLETES = Parameters_MetricsItem "METRIC_RICH_MEDIA_VIDEO_FIRST_QUARTILE_COMPLETES"

-- | 
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOTHIRDQUARTILECOMPLETES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOTHIRDQUARTILECOMPLETES = Parameters_MetricsItem "METRIC_RICH_MEDIA_VIDEO_THIRD_QUARTILE_COMPLETES"

-- | 
pattern Parameters_MetricsItem_METRICCLICKTOPOSTCLICKCONVERSIONRATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCLICKTOPOSTCLICKCONVERSIONRATE = Parameters_MetricsItem "METRIC_CLICK_TO_POST_CLICK_CONVERSION_RATE"

-- | 
pattern Parameters_MetricsItem_METRICIMPRESSIONSTOCONVERSIONRATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICIMPRESSIONSTOCONVERSIONRATE = Parameters_MetricsItem "METRIC_IMPRESSIONS_TO_CONVERSION_RATE"

-- | 
pattern Parameters_MetricsItem_METRICCONVERSIONSPERMILLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCONVERSIONSPERMILLE = Parameters_MetricsItem "METRIC_CONVERSIONS_PER_MILLE"

-- | 
pattern Parameters_MetricsItem_METRICCTR :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCTR = Parameters_MetricsItem "METRIC_CTR"

-- | 
pattern Parameters_MetricsItem_METRICBIDREQUESTS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBIDREQUESTS = Parameters_MetricsItem "METRIC_BID_REQUESTS"

-- | 
pattern Parameters_MetricsItem_METRICUNIQUEVISITORSCOOKIES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICUNIQUEVISITORSCOOKIES = Parameters_MetricsItem "METRIC_UNIQUE_VISITORS_COOKIES"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPCVADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPCVADVERTISER = Parameters_MetricsItem "METRIC_REVENUE_ECPCV_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPCVUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPCVUSD = Parameters_MetricsItem "METRIC_REVENUE_ECPCV_USD"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEECPCVPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEECPCVPARTNER = Parameters_MetricsItem "METRIC_REVENUE_ECPCV_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCVADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCVADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPCV_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCVUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCVUSD = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPCV_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCVPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTECPCVPARTNER = Parameters_MetricsItem "METRIC_MEDIA_COST_ECPCV_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVADVERTISER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPCV_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVUSD = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPCV_USD"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVPARTNER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ECPCV_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOSKIPS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICRICHMEDIAVIDEOSKIPS = Parameters_MetricsItem "METRIC_RICH_MEDIA_VIDEO_SKIPS"

-- | 
pattern Parameters_MetricsItem_METRICFEE2ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE2ADVERTISER = Parameters_MetricsItem "METRIC_FEE2_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE2USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE2USD = Parameters_MetricsItem "METRIC_FEE2_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE2PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE2PARTNER = Parameters_MetricsItem "METRIC_FEE2_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE3ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE3ADVERTISER = Parameters_MetricsItem "METRIC_FEE3_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE3USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE3USD = Parameters_MetricsItem "METRIC_FEE3_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE3PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE3PARTNER = Parameters_MetricsItem "METRIC_FEE3_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE4ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE4ADVERTISER = Parameters_MetricsItem "METRIC_FEE4_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE4USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE4USD = Parameters_MetricsItem "METRIC_FEE4_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE4PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE4PARTNER = Parameters_MetricsItem "METRIC_FEE4_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE5ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE5ADVERTISER = Parameters_MetricsItem "METRIC_FEE5_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE5USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE5USD = Parameters_MetricsItem "METRIC_FEE5_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE5PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE5PARTNER = Parameters_MetricsItem "METRIC_FEE5_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE6ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE6ADVERTISER = Parameters_MetricsItem "METRIC_FEE6_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE6USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE6USD = Parameters_MetricsItem "METRIC_FEE6_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE6PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE6PARTNER = Parameters_MetricsItem "METRIC_FEE6_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE7ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE7ADVERTISER = Parameters_MetricsItem "METRIC_FEE7_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE7USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE7USD = Parameters_MetricsItem "METRIC_FEE7_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE7PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE7PARTNER = Parameters_MetricsItem "METRIC_FEE7_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE8ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE8ADVERTISER = Parameters_MetricsItem "METRIC_FEE8_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE8USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE8USD = Parameters_MetricsItem "METRIC_FEE8_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE8PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE8PARTNER = Parameters_MetricsItem "METRIC_FEE8_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE9ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE9ADVERTISER = Parameters_MetricsItem "METRIC_FEE9_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE9USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE9USD = Parameters_MetricsItem "METRIC_FEE9_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE9PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE9PARTNER = Parameters_MetricsItem "METRIC_FEE9_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE10ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE10ADVERTISER = Parameters_MetricsItem "METRIC_FEE10_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE10USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE10USD = Parameters_MetricsItem "METRIC_FEE10_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE10PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE10PARTNER = Parameters_MetricsItem "METRIC_FEE10_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE11ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE11ADVERTISER = Parameters_MetricsItem "METRIC_FEE11_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE11USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE11USD = Parameters_MetricsItem "METRIC_FEE11_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE11PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE11PARTNER = Parameters_MetricsItem "METRIC_FEE11_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE12ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE12ADVERTISER = Parameters_MetricsItem "METRIC_FEE12_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE12USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE12USD = Parameters_MetricsItem "METRIC_FEE12_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE12PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE12PARTNER = Parameters_MetricsItem "METRIC_FEE12_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE13ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE13ADVERTISER = Parameters_MetricsItem "METRIC_FEE13_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE13USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE13USD = Parameters_MetricsItem "METRIC_FEE13_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE13PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE13PARTNER = Parameters_MetricsItem "METRIC_FEE13_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE14ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE14ADVERTISER = Parameters_MetricsItem "METRIC_FEE14_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE14USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE14USD = Parameters_MetricsItem "METRIC_FEE14_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE14PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE14PARTNER = Parameters_MetricsItem "METRIC_FEE14_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE15ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE15ADVERTISER = Parameters_MetricsItem "METRIC_FEE15_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE15USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE15USD = Parameters_MetricsItem "METRIC_FEE15_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE15PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE15PARTNER = Parameters_MetricsItem "METRIC_FEE15_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE3ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE3ADVERTISER = Parameters_MetricsItem "METRIC_CPM_FEE3_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE3USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE3USD = Parameters_MetricsItem "METRIC_CPM_FEE3_USD"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE3PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE3PARTNER = Parameters_MetricsItem "METRIC_CPM_FEE3_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE4ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE4ADVERTISER = Parameters_MetricsItem "METRIC_CPM_FEE4_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE4USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE4USD = Parameters_MetricsItem "METRIC_CPM_FEE4_USD"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE4PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE4PARTNER = Parameters_MetricsItem "METRIC_CPM_FEE4_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE5ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE5ADVERTISER = Parameters_MetricsItem "METRIC_CPM_FEE5_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE5USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE5USD = Parameters_MetricsItem "METRIC_CPM_FEE5_USD"

-- | 
pattern Parameters_MetricsItem_METRICCPMFEE5PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCPMFEE5PARTNER = Parameters_MetricsItem "METRIC_CPM_FEE5_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE3ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE3ADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_FEE3_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE3USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE3USD = Parameters_MetricsItem "METRIC_MEDIA_FEE3_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE3PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE3PARTNER = Parameters_MetricsItem "METRIC_MEDIA_FEE3_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE4ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE4ADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_FEE4_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE4USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE4USD = Parameters_MetricsItem "METRIC_MEDIA_FEE4_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE4PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE4PARTNER = Parameters_MetricsItem "METRIC_MEDIA_FEE4_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE5ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE5ADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_FEE5_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE5USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE5USD = Parameters_MetricsItem "METRIC_MEDIA_FEE5_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIAFEE5PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIAFEE5PARTNER = Parameters_MetricsItem "METRIC_MEDIA_FEE5_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICVIDEOCOMPANIONIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIDEOCOMPANIONIMPRESSIONS = Parameters_MetricsItem "METRIC_VIDEO_COMPANION_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICVIDEOCOMPANIONCLICKS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIDEOCOMPANIONCLICKS = Parameters_MetricsItem "METRIC_VIDEO_COMPANION_CLICKS"

-- | 
pattern Parameters_MetricsItem_METRICFEE16ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE16ADVERTISER = Parameters_MetricsItem "METRIC_FEE16_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE16USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE16USD = Parameters_MetricsItem "METRIC_FEE16_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE16PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE16PARTNER = Parameters_MetricsItem "METRIC_FEE16_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE17ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE17ADVERTISER = Parameters_MetricsItem "METRIC_FEE17_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE17USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE17USD = Parameters_MetricsItem "METRIC_FEE17_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE17PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE17PARTNER = Parameters_MetricsItem "METRIC_FEE17_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE18ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE18ADVERTISER = Parameters_MetricsItem "METRIC_FEE18_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE18USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE18USD = Parameters_MetricsItem "METRIC_FEE18_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE18PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE18PARTNER = Parameters_MetricsItem "METRIC_FEE18_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWVIEWS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWVIEWS = Parameters_MetricsItem "METRIC_TRUEVIEW_VIEWS"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWUNIQUEVIEWERS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWUNIQUEVIEWERS = Parameters_MetricsItem "METRIC_TRUEVIEW_UNIQUE_VIEWERS"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWEARNEDVIEWS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWEARNEDVIEWS = Parameters_MetricsItem "METRIC_TRUEVIEW_EARNED_VIEWS"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWEARNEDSUBSCRIBERS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWEARNEDSUBSCRIBERS = Parameters_MetricsItem "METRIC_TRUEVIEW_EARNED_SUBSCRIBERS"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWEARNEDPLAYLISTADDITIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWEARNEDPLAYLISTADDITIONS = Parameters_MetricsItem "METRIC_TRUEVIEW_EARNED_PLAYLIST_ADDITIONS"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWEARNEDLIKES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWEARNEDLIKES = Parameters_MetricsItem "METRIC_TRUEVIEW_EARNED_LIKES"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWEARNEDSHARES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWEARNEDSHARES = Parameters_MetricsItem "METRIC_TRUEVIEW_EARNED_SHARES"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWIMPRESSIONSHARE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWIMPRESSIONSHARE = Parameters_MetricsItem "METRIC_TRUEVIEW_IMPRESSION_SHARE"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWLOSTISBUDGET :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWLOSTISBUDGET = Parameters_MetricsItem "METRIC_TRUEVIEW_LOST_IS_BUDGET"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWLOSTISRANK :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWLOSTISRANK = Parameters_MetricsItem "METRIC_TRUEVIEW_LOST_IS_RANK"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWVIEWTHROUGHCONVERSION :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWVIEWTHROUGHCONVERSION = Parameters_MetricsItem "METRIC_TRUEVIEW_VIEW_THROUGH_CONVERSION"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONMANYPERVIEW :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONMANYPERVIEW = Parameters_MetricsItem "METRIC_TRUEVIEW_CONVERSION_MANY_PER_VIEW"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWVIEWRATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWVIEWRATE = Parameters_MetricsItem "METRIC_TRUEVIEW_VIEW_RATE"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONRATEONEPERVIEW :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONRATEONEPERVIEW = Parameters_MetricsItem "METRIC_TRUEVIEW_CONVERSION_RATE_ONE_PER_VIEW"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWCPVADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWCPVADVERTISER = Parameters_MetricsItem "METRIC_TRUEVIEW_CPV_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWCPVUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWCPVUSD = Parameters_MetricsItem "METRIC_TRUEVIEW_CPV_USD"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWCPVPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWCPVPARTNER = Parameters_MetricsItem "METRIC_TRUEVIEW_CPV_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE19ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE19ADVERTISER = Parameters_MetricsItem "METRIC_FEE19_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE19USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE19USD = Parameters_MetricsItem "METRIC_FEE19_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE19PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE19PARTNER = Parameters_MetricsItem "METRIC_FEE19_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTEATRUEVIEWIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTEATRUEVIEWIMPRESSIONS = Parameters_MetricsItem "METRIC_TEA_TRUEVIEW_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICTEATRUEVIEWUNIQUECOOKIES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTEATRUEVIEWUNIQUECOOKIES = Parameters_MetricsItem "METRIC_TEA_TRUEVIEW_UNIQUE_COOKIES"

-- | 
pattern Parameters_MetricsItem_METRICFEE20ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE20ADVERTISER = Parameters_MetricsItem "METRIC_FEE20_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE20USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE20USD = Parameters_MetricsItem "METRIC_FEE20_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE20PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE20PARTNER = Parameters_MetricsItem "METRIC_FEE20_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE21ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE21ADVERTISER = Parameters_MetricsItem "METRIC_FEE21_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE21USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE21USD = Parameters_MetricsItem "METRIC_FEE21_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE21PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE21PARTNER = Parameters_MetricsItem "METRIC_FEE21_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICFEE22ADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE22ADVERTISER = Parameters_MetricsItem "METRIC_FEE22_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICFEE22USD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE22USD = Parameters_MetricsItem "METRIC_FEE22_USD"

-- | 
pattern Parameters_MetricsItem_METRICFEE22PARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFEE22PARTNER = Parameters_MetricsItem "METRIC_FEE22_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESADVERTISER = Parameters_MetricsItem "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESUSD = Parameters_MetricsItem "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_USD"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESPARTNER = Parameters_MetricsItem "METRIC_TRUEVIEW_TOTAL_CONVERSION_VALUES_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWADVERTISER = Parameters_MetricsItem "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWUSD = Parameters_MetricsItem "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_USD"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWPARTNER = Parameters_MetricsItem "METRIC_TRUEVIEW_CONVERSION_COST_MANY_PER_VIEW_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICPROFITVIEWABLEECPMADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROFITVIEWABLEECPMADVERTISER = Parameters_MetricsItem "METRIC_PROFIT_VIEWABLE_ECPM_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICPROFITVIEWABLEECPMUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROFITVIEWABLEECPMUSD = Parameters_MetricsItem "METRIC_PROFIT_VIEWABLE_ECPM_USD"

-- | 
pattern Parameters_MetricsItem_METRICPROFITVIEWABLEECPMPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROFITVIEWABLEECPMPARTNER = Parameters_MetricsItem "METRIC_PROFIT_VIEWABLE_ECPM_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMADVERTISER = Parameters_MetricsItem "METRIC_REVENUE_VIEWABLE_ECPM_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMUSD = Parameters_MetricsItem "METRIC_REVENUE_VIEWABLE_ECPM_USD"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMPARTNER = Parameters_MetricsItem "METRIC_REVENUE_VIEWABLE_ECPM_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMADVERTISER = Parameters_MetricsItem "METRIC_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMUSD = Parameters_MetricsItem "METRIC_MEDIA_COST_VIEWABLE_ECPM_USD"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMPARTNER = Parameters_MetricsItem "METRIC_MEDIA_COST_VIEWABLE_ECPM_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMADVERTISER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMUSD = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_USD"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMPARTNER = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_VIEWABLE_ECPM_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWENGAGEMENTS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWENGAGEMENTS = Parameters_MetricsItem "METRIC_TRUEVIEW_ENGAGEMENTS"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWENGAGEMENTRATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWENGAGEMENTRATE = Parameters_MetricsItem "METRIC_TRUEVIEW_ENGAGEMENT_RATE"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEADVERTISER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEADVERTISER = Parameters_MetricsItem "METRIC_TRUEVIEW_AVERAGE_CPE_ADVERTISER"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEUSD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEUSD = Parameters_MetricsItem "METRIC_TRUEVIEW_AVERAGE_CPE_USD"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEPARTNER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEPARTNER = Parameters_MetricsItem "METRIC_TRUEVIEW_AVERAGE_CPE_PARTNER"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWVIEWABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWVIEWABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWELIGIBLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWELIGIBLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWMEASURABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWMEASURABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPCTMEASURABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPCTMEASURABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PCT_MEASURABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPCTVIEWABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPCTVIEWABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PCT_VIEWABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWAVERAGEVIEWABLETIME :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWAVERAGEVIEWABLETIME = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_AVERAGE_VIEWABLE_TIME"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWUNMEASURABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWUNMEASURABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_UNMEASURABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWUNVIEWABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWUNVIEWABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_UNVIEWABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONUNMEASURABLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONUNMEASURABLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNMEASURABLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONUNVIEWABLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONUNVIEWABLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_DISTRIBUTION_UNVIEWABLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONVIEWABLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONVIEWABLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_DISTRIBUTION_VIEWABLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVIEWABLEFORTIMETHRESHOLD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVIEWABLEFORTIMETHRESHOLD = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_VIEWABLE_FOR_TIME_THRESHOLD"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWVIEWABLEFORTIMETHRESHOLD :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWVIEWABLEFORTIMETHRESHOLD = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_VIEWABLE_FOR_TIME_THRESHOLD"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEATSTART :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEATSTART = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_AT_START"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEFIRSTQUAR :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEFIRSTQUAR = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_FIRST_QUAR"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLESECONDQUAR :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLESECONDQUAR = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_SECOND_QUAR"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLETHIRDQUAR :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLETHIRDQUAR = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_THIRD_QUAR"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEONCOMPLETE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEONCOMPLETE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_VISIBLE_ON_COMPLETE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEATSTART :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEATSTART = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_AT_START"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEFIRSTQUAR :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEFIRSTQUAR = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_FIRST_QUAR"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLESECONDQUAR :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLESECONDQUAR = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_SECOND_QUAR"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLETHIRDQUAR :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLETHIRDQUAR = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_THIRD_QUAR"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEONCOMPLETE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEONCOMPLETE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_VISIBLE_ON_COMPLETE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEVISIBLEONCOMPLETEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEVISIBLEONCOMPLETEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_AUDIBLE_VISIBLE_ON_COMPLETE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICVIEWABLEBIDREQUESTS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIEWABLEBIDREQUESTS = Parameters_MetricsItem "METRIC_VIEWABLE_BID_REQUESTS"

-- | 
pattern Parameters_MetricsItem_METRICCOOKIEREACHIMPRESSIONREACH :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCOOKIEREACHIMPRESSIONREACH = Parameters_MetricsItem "METRIC_COOKIE_REACH_IMPRESSION_REACH"

-- | 
pattern Parameters_MetricsItem_METRICCOOKIEREACHAVERAGEIMPRESSIONFREQUENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCOOKIEREACHAVERAGEIMPRESSIONFREQUENCY = Parameters_MetricsItem "METRIC_COOKIE_REACH_AVERAGE_IMPRESSION_FREQUENCY"

-- | 
pattern Parameters_MetricsItem_METRICDBMENGAGEMENTRATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICDBMENGAGEMENTRATE = Parameters_MetricsItem "METRIC_DBM_ENGAGEMENT_RATE"

-- | 
pattern Parameters_MetricsItem_METRICRICHMEDIASCROLLS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICRICHMEDIASCROLLS = Parameters_MetricsItem "METRIC_RICH_MEDIA_SCROLLS"

-- | 
pattern Parameters_MetricsItem_METRICCMPOSTVIEWREVENUE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCMPOSTVIEWREVENUE = Parameters_MetricsItem "METRIC_CM_POST_VIEW_REVENUE"

-- | 
pattern Parameters_MetricsItem_METRICCMPOSTCLICKREVENUE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCMPOSTCLICKREVENUE = Parameters_MetricsItem "METRIC_CM_POST_CLICK_REVENUE"

-- | 
pattern Parameters_MetricsItem_METRICFLOODLIGHTIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFLOODLIGHTIMPRESSIONS = Parameters_MetricsItem "METRIC_FLOODLIGHT_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICBILLABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBILLABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_BILLABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICNIELSENAVERAGEFREQUENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICNIELSENAVERAGEFREQUENCY = Parameters_MetricsItem "METRIC_NIELSEN_AVERAGE_FREQUENCY"

-- | 
pattern Parameters_MetricsItem_METRICNIELSENIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICNIELSENIMPRESSIONS = Parameters_MetricsItem "METRIC_NIELSEN_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICNIELSENUNIQUEAUDIENCE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICNIELSENUNIQUEAUDIENCE = Parameters_MetricsItem "METRIC_NIELSEN_UNIQUE_AUDIENCE"

-- | 
pattern Parameters_MetricsItem_METRICNIELSENGRP :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICNIELSENGRP = Parameters_MetricsItem "METRIC_NIELSEN_GRP"

-- | 
pattern Parameters_MetricsItem_METRICNIELSENIMPRESSIONINDEX :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICNIELSENIMPRESSIONINDEX = Parameters_MetricsItem "METRIC_NIELSEN_IMPRESSION_INDEX"

-- | 
pattern Parameters_MetricsItem_METRICNIELSENIMPRESSIONSSHARE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICNIELSENIMPRESSIONSSHARE = Parameters_MetricsItem "METRIC_NIELSEN_IMPRESSIONS_SHARE"

-- | 
pattern Parameters_MetricsItem_METRICNIELSENPOPULATION :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICNIELSENPOPULATION = Parameters_MetricsItem "METRIC_NIELSEN_POPULATION"

-- | 
pattern Parameters_MetricsItem_METRICNIELSENPOPULATIONREACH :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICNIELSENPOPULATIONREACH = Parameters_MetricsItem "METRIC_NIELSEN_POPULATION_REACH"

-- | 
pattern Parameters_MetricsItem_METRICNIELSENPOPULATIONSHARE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICNIELSENPOPULATIONSHARE = Parameters_MetricsItem "METRIC_NIELSEN_POPULATION_SHARE"

-- | 
pattern Parameters_MetricsItem_METRICNIELSENREACHINDEX :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICNIELSENREACHINDEX = Parameters_MetricsItem "METRIC_NIELSEN_REACH_INDEX"

-- | 
pattern Parameters_MetricsItem_METRICNIELSENREACHSHARE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICNIELSENREACHSHARE = Parameters_MetricsItem "METRIC_NIELSEN_REACH_SHARE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONMEASURABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONMEASURABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_MEASURABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONRATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONRATE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_RATE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWMEASURABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWMEASURABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_MEASURABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWRATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWRATE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_AUDIBLE_FULLY_ON_SCREEN_HALF_OF_DURATION_TRUEVIEW_RATE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICMEASURABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICMEASURABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_CUSTOM_METRIC_MEASURABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICVIEWABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICVIEWABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_CUSTOM_METRIC_VIEWABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICVIEWABLERATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICVIEWABLERATE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_CUSTOM_METRIC_VIEWABLE_RATE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEIMPRESSIONS = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_AUDIBLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTFULLYONSCREEN2SEC :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTFULLYONSCREEN2SEC = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_FULLY_ON_SCREEN_2_SEC"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTFULLSCREEN :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTFULLSCREEN = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_FULL_SCREEN"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTINBACKGROUND :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTINBACKGROUND = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_IN_BACKGROUND"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFADPLAYED :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFADPLAYED = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_OF_AD_PLAYED"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFCOMPLETEDIMPRESSIONSAUDIBLEANDVISIBLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFCOMPLETEDIMPRESSIONSAUDIBLEANDVISIBLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_OF_COMPLETED_IMPRESSIONS_AUDIBLE_AND_VISIBLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFCOMPLETEDIMPRESSIONSVISIBLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFCOMPLETEDIMPRESSIONSVISIBLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_OF_COMPLETED_IMPRESSIONS_VISIBLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFFIRSTQUARTILEIMPRESSIONSAUDIBLEANDVISIBLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFFIRSTQUARTILEIMPRESSIONSAUDIBLEANDVISIBLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_OF_FIRST_QUARTILE_IMPRESSIONS_AUDIBLE_AND_VISIBLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFFIRSTQUARTILEIMPRESSIONSVISIBLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFFIRSTQUARTILEIMPRESSIONSVISIBLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_OF_FIRST_QUARTILE_IMPRESSIONS_VISIBLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFMIDPOINTIMPRESSIONSAUDIBLEANDVISIBLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFMIDPOINTIMPRESSIONSAUDIBLEANDVISIBLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_OF_MIDPOINT_IMPRESSIONS_AUDIBLE_AND_VISIBLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFMIDPOINTIMPRESSIONSVISIBLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFMIDPOINTIMPRESSIONSVISIBLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_OF_MIDPOINT_IMPRESSIONS_VISIBLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFTHIRDQUARTILEIMPRESSIONSAUDIBLEANDVISIBLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFTHIRDQUARTILEIMPRESSIONSAUDIBLEANDVISIBLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_OF_THIRD_QUARTILE_IMPRESSIONS_AUDIBLE_AND_VISIBLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFTHIRDQUARTILEIMPRESSIONSVISIBLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFTHIRDQUARTILEIMPRESSIONSVISIBLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_OF_THIRD_QUARTILE_IMPRESSIONS_VISIBLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEAUDIBLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEAUDIBLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_AUDIBLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEAUDIBLEANDVISIBLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEAUDIBLEANDVISIBLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_AUDIBLE_AND_VISIBLE"

-- | 
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEVISIBLE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEVISIBLE = Parameters_MetricsItem "METRIC_ACTIVE_VIEW_PERCENT_PLAY_TIME_VISIBLE"

-- | 
pattern Parameters_MetricsItem_METRICADAPTEDAUDIENCEFREQUENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICADAPTEDAUDIENCEFREQUENCY = Parameters_MetricsItem "METRIC_ADAPTED_AUDIENCE_FREQUENCY"

-- | 
pattern Parameters_MetricsItem_METRICADLINGOFEEADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICADLINGOFEEADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_ADLINGO_FEE_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICAUDIOCLIENTCOSTECPCLADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICAUDIOCLIENTCOSTECPCLADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_AUDIO_CLIENT_COST_ECPCL_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICAUDIOMEDIACOSTECPCLADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICAUDIOMEDIACOSTECPCLADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_AUDIO_MEDIA_COST_ECPCL_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICAUDIOMUTESAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICAUDIOMUTESAUDIO = Parameters_MetricsItem "METRIC_AUDIO_MUTES_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICAUDIOREVENUEECPCLADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICAUDIOREVENUEECPCLADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_AUDIO_REVENUE_ECPCL_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICAUDIOUNMUTESAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICAUDIOUNMUTESAUDIO = Parameters_MetricsItem "METRIC_AUDIO_UNMUTES_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICAUDIOUNMUTESVIDEO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICAUDIOUNMUTESVIDEO = Parameters_MetricsItem "METRIC_AUDIO_UNMUTES_VIDEO"

-- | 
pattern Parameters_MetricsItem_METRICAVERAGEDISPLAYTIME :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICAVERAGEDISPLAYTIME = Parameters_MetricsItem "METRIC_AVERAGE_DISPLAY_TIME"

-- | 
pattern Parameters_MetricsItem_METRICAVERAGEIMPRESSIONFREQUENCYPERUSER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICAVERAGEIMPRESSIONFREQUENCYPERUSER = Parameters_MetricsItem "METRIC_AVERAGE_IMPRESSION_FREQUENCY_PER_USER"

-- | 
pattern Parameters_MetricsItem_METRICAVERAGEINTERACTIONTIME :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICAVERAGEINTERACTIONTIME = Parameters_MetricsItem "METRIC_AVERAGE_INTERACTION_TIME"

-- | 
pattern Parameters_MetricsItem_METRICAVERAGEWATCHTIMEPERIMPRESSION :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICAVERAGEWATCHTIMEPERIMPRESSION = Parameters_MetricsItem "METRIC_AVERAGE_WATCH_TIME_PER_IMPRESSION"

-- | 
pattern Parameters_MetricsItem_METRICBEGINTORENDERELIGIBLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBEGINTORENDERELIGIBLEIMPRESSIONS = Parameters_MetricsItem "METRIC_BEGIN_TO_RENDER_ELIGIBLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICBEGINTORENDERIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBEGINTORENDERIMPRESSIONS = Parameters_MetricsItem "METRIC_BEGIN_TO_RENDER_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICBENCHMARKFREQUENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBENCHMARKFREQUENCY = Parameters_MetricsItem "METRIC_BENCHMARK_FREQUENCY"

-- | 
pattern Parameters_MetricsItem_METRICBRANDLIFTABSOLUTEBRANDLIFT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBRANDLIFTABSOLUTEBRANDLIFT = Parameters_MetricsItem "METRIC_BRAND_LIFT_ABSOLUTE_BRAND_LIFT"

-- | 
pattern Parameters_MetricsItem_METRICBRANDLIFTALLSURVEYRESPONSES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBRANDLIFTALLSURVEYRESPONSES = Parameters_MetricsItem "METRIC_BRAND_LIFT_ALL_SURVEY_RESPONSES"

-- | 
pattern Parameters_MetricsItem_METRICBRANDLIFTBASELINEPOSITIVERESPONSERATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBRANDLIFTBASELINEPOSITIVERESPONSERATE = Parameters_MetricsItem "METRIC_BRAND_LIFT_BASELINE_POSITIVE_RESPONSE_RATE"

-- | 
pattern Parameters_MetricsItem_METRICBRANDLIFTBASELINESURVEYRESPONSES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBRANDLIFTBASELINESURVEYRESPONSES = Parameters_MetricsItem "METRIC_BRAND_LIFT_BASELINE_SURVEY_RESPONSES"

-- | 
pattern Parameters_MetricsItem_METRICBRANDLIFTCOSTPERLIFTEDUSER :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBRANDLIFTCOSTPERLIFTEDUSER = Parameters_MetricsItem "METRIC_BRAND_LIFT_COST_PER_LIFTED_USER"

-- | 
pattern Parameters_MetricsItem_METRICBRANDLIFTEXPOSEDSURVEYRESPONSES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBRANDLIFTEXPOSEDSURVEYRESPONSES = Parameters_MetricsItem "METRIC_BRAND_LIFT_EXPOSED_SURVEY_RESPONSES"

-- | 
pattern Parameters_MetricsItem_METRICBRANDLIFTHEADROOMBRANDLIFT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBRANDLIFTHEADROOMBRANDLIFT = Parameters_MetricsItem "METRIC_BRAND_LIFT_HEADROOM_BRAND_LIFT"

-- | 
pattern Parameters_MetricsItem_METRICBRANDLIFTRELATIVEBRANDLIFT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBRANDLIFTRELATIVEBRANDLIFT = Parameters_MetricsItem "METRIC_BRAND_LIFT_RELATIVE_BRAND_LIFT"

-- | 
pattern Parameters_MetricsItem_METRICBRANDLIFTUSERS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICBRANDLIFTUSERS = Parameters_MetricsItem "METRIC_BRAND_LIFT_USERS"

-- | 
pattern Parameters_MetricsItem_METRICCARDCLICKS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCARDCLICKS = Parameters_MetricsItem "METRIC_CARD_CLICKS"

-- | 
pattern Parameters_MetricsItem_METRICCLIENTCOSTADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCLIENTCOSTADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CLIENT_COST_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCLIENTCOSTECPAADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCLIENTCOSTECPAADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CLIENT_COST_ECPA_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCLIENTCOSTECPAPCADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCLIENTCOSTECPAPCADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CLIENT_COST_ECPA_PC_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCLIENTCOSTECPAPVADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCLIENTCOSTECPAPVADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CLIENT_COST_ECPA_PV_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCLIENTCOSTECPCADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCLIENTCOSTECPCADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CLIENT_COST_ECPC_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCLIENTCOSTECPMADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCLIENTCOSTECPMADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CLIENT_COST_ECPM_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCLIENTCOSTVIEWABLEECPMADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCLIENTCOSTVIEWABLEECPMADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CLIENT_COST_VIEWABLE_ECPM_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCMPOSTCLICKREVENUECROSSENVIRONMENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCMPOSTCLICKREVENUECROSSENVIRONMENT = Parameters_MetricsItem "METRIC_CM_POST_CLICK_REVENUE_CROSS_ENVIRONMENT"

-- | 
pattern Parameters_MetricsItem_METRICCMPOSTVIEWREVENUECROSSENVIRONMENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCMPOSTVIEWREVENUECROSSENVIRONMENT = Parameters_MetricsItem "METRIC_CM_POST_VIEW_REVENUE_CROSS_ENVIRONMENT"

-- | 
pattern Parameters_MetricsItem_METRICCOMPANIONCLICKSAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCOMPANIONCLICKSAUDIO = Parameters_MetricsItem "METRIC_COMPANION_CLICKS_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICCOMPANIONIMPRESSIONSAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCOMPANIONIMPRESSIONSAUDIO = Parameters_MetricsItem "METRIC_COMPANION_IMPRESSIONS_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICCOMPLETELISTENSAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCOMPLETELISTENSAUDIO = Parameters_MetricsItem "METRIC_COMPLETE_LISTENS_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICCOMPLETIONRATEAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCOMPLETIONRATEAUDIO = Parameters_MetricsItem "METRIC_COMPLETION_RATE_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICCOUNTERS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCOUNTERS = Parameters_MetricsItem "METRIC_COUNTERS"

-- | 
pattern Parameters_MetricsItem_METRICCUSTOMFEE1ADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCUSTOMFEE1ADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CUSTOM_FEE_1_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCUSTOMFEE2ADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCUSTOMFEE2ADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CUSTOM_FEE_2_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCUSTOMFEE3ADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCUSTOMFEE3ADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CUSTOM_FEE_3_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCUSTOMFEE4ADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCUSTOMFEE4ADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CUSTOM_FEE_4_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCUSTOMFEE5ADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCUSTOMFEE5ADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_CUSTOM_FEE_5_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICCUSTOMVALUEPER1000IMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCUSTOMVALUEPER1000IMPRESSIONS = Parameters_MetricsItem "METRIC_CUSTOM_VALUE_PER_1000_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICENGAGEMENTS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICENGAGEMENTS = Parameters_MetricsItem "METRIC_ENGAGEMENTS"

-- | 
pattern Parameters_MetricsItem_METRICESTIMATEDCPMFORIMPRESSIONSWITHCUSTOMVALUEADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICESTIMATEDCPMFORIMPRESSIONSWITHCUSTOMVALUEADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_ESTIMATED_CPM_FOR_IMPRESSIONS_WITH_CUSTOM_VALUE_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICESTIMATEDTOTALCOSTFORIMPRESSIONSWITHCUSTOMVALUEADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICESTIMATEDTOTALCOSTFORIMPRESSIONSWITHCUSTOMVALUEADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_ESTIMATED_TOTAL_COST_FOR_IMPRESSIONS_WITH_CUSTOM_VALUE_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICEXITS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICEXITS = Parameters_MetricsItem "METRIC_EXITS"

-- | 
pattern Parameters_MetricsItem_METRICEXPANSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICEXPANSIONS = Parameters_MetricsItem "METRIC_EXPANSIONS"

-- | 
pattern Parameters_MetricsItem_METRICFIRSTQUARTILEAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICFIRSTQUARTILEAUDIO = Parameters_MetricsItem "METRIC_FIRST_QUARTILE_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICGENERALINVALIDTRAFFICGIVTIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGENERALINVALIDTRAFFICGIVTIMPRESSIONS = Parameters_MetricsItem "METRIC_GENERAL_INVALID_TRAFFIC_GIVT_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICGENERALINVALIDTRAFFICGIVTTRACKEDADS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGENERALINVALIDTRAFFICGIVTTRACKEDADS = Parameters_MetricsItem "METRIC_GENERAL_INVALID_TRAFFIC_GIVT_TRACKED_ADS"

-- | 
pattern Parameters_MetricsItem_METRICGIVTACTIVEVIEWELIGIBLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGIVTACTIVEVIEWELIGIBLEIMPRESSIONS = Parameters_MetricsItem "METRIC_GIVT_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICGIVTACTIVEVIEWMEASURABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGIVTACTIVEVIEWMEASURABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_GIVT_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICGIVTACTIVEVIEWVIEWABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGIVTACTIVEVIEWVIEWABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_GIVT_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICGIVTBEGINTORENDERIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGIVTBEGINTORENDERIMPRESSIONS = Parameters_MetricsItem "METRIC_GIVT_BEGIN_TO_RENDER_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICGIVTCLICKS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGIVTCLICKS = Parameters_MetricsItem "METRIC_GIVT_CLICKS"

-- | 
pattern Parameters_MetricsItem_METRICGMAILCONVERSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGMAILCONVERSIONS = Parameters_MetricsItem "METRIC_GMAIL_CONVERSIONS"

-- | 
pattern Parameters_MetricsItem_METRICGMAILPOSTCLICKCONVERSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGMAILPOSTCLICKCONVERSIONS = Parameters_MetricsItem "METRIC_GMAIL_POST_CLICK_CONVERSIONS"

-- | 
pattern Parameters_MetricsItem_METRICGMAILPOSTVIEWCONVERSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGMAILPOSTVIEWCONVERSIONS = Parameters_MetricsItem "METRIC_GMAIL_POST_VIEW_CONVERSIONS"

-- | 
pattern Parameters_MetricsItem_METRICGMAILPOTENTIALVIEWS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGMAILPOTENTIALVIEWS = Parameters_MetricsItem "METRIC_GMAIL_POTENTIAL_VIEWS"

-- | 
pattern Parameters_MetricsItem_METRICIMPRESSIONSWITHCUSTOMVALUE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICIMPRESSIONSWITHCUSTOMVALUE = Parameters_MetricsItem "METRIC_IMPRESSIONS_WITH_CUSTOM_VALUE"

-- | 
pattern Parameters_MetricsItem_METRICIMPRESSIONSWITHPOSITIVECUSTOMVALUE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICIMPRESSIONSWITHPOSITIVECUSTOMVALUE = Parameters_MetricsItem "METRIC_IMPRESSIONS_WITH_POSITIVE_CUSTOM_VALUE"

-- | 
pattern Parameters_MetricsItem_METRICIMPRESSIONCUSTOMVALUECOST :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICIMPRESSIONCUSTOMVALUECOST = Parameters_MetricsItem "METRIC_IMPRESSION_CUSTOM_VALUE_COST"

-- | 
pattern Parameters_MetricsItem_METRICINTERACTIVEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICINTERACTIVEIMPRESSIONS = Parameters_MetricsItem "METRIC_INTERACTIVE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICINVALIDACTIVEVIEWELIGIBLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICINVALIDACTIVEVIEWELIGIBLEIMPRESSIONS = Parameters_MetricsItem "METRIC_INVALID_ACTIVE_VIEW_ELIGIBLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICINVALIDACTIVEVIEWMEASURABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICINVALIDACTIVEVIEWMEASURABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_INVALID_ACTIVE_VIEW_MEASURABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICINVALIDACTIVEVIEWVIEWABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICINVALIDACTIVEVIEWVIEWABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_INVALID_ACTIVE_VIEW_VIEWABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICINVALIDBEGINTORENDERIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICINVALIDBEGINTORENDERIMPRESSIONS = Parameters_MetricsItem "METRIC_INVALID_BEGIN_TO_RENDER_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICINVALIDCLICKS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICINVALIDCLICKS = Parameters_MetricsItem "METRIC_INVALID_CLICKS"

-- | 
pattern Parameters_MetricsItem_METRICINVALIDIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICINVALIDIMPRESSIONS = Parameters_MetricsItem "METRIC_INVALID_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICINVALIDTRACKEDADS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICINVALIDTRACKEDADS = Parameters_MetricsItem "METRIC_INVALID_TRACKED_ADS"

-- | 
pattern Parameters_MetricsItem_METRICMEDIACOSTADVERTISERCURRENCYPERSTOREVISITADXONLY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMEDIACOSTADVERTISERCURRENCYPERSTOREVISITADXONLY = Parameters_MetricsItem "METRIC_MEDIA_COST_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY"

-- | 
pattern Parameters_MetricsItem_METRICMIDPOINTAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICMIDPOINTAUDIO = Parameters_MetricsItem "METRIC_MIDPOINT_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICORIGINALAUDIENCEFREQUENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICORIGINALAUDIENCEFREQUENCY = Parameters_MetricsItem "METRIC_ORIGINAL_AUDIENCE_FREQUENCY"

-- | 
pattern Parameters_MetricsItem_METRICPAUSESAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPAUSESAUDIO = Parameters_MetricsItem "METRIC_PAUSES_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICPERCENTIMPRESSIONSWITHPOSITIVECUSTOMVALUE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPERCENTIMPRESSIONSWITHPOSITIVECUSTOMVALUE = Parameters_MetricsItem "METRIC_PERCENT_IMPRESSIONS_WITH_POSITIVE_CUSTOM_VALUE"

-- | 
pattern Parameters_MetricsItem_METRICPLATFORMFEERATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPLATFORMFEERATE = Parameters_MetricsItem "METRIC_PLATFORM_FEE_RATE"

-- | 
pattern Parameters_MetricsItem_METRICPOSTCLICKCONVERSIONSCROSSENVIRONMENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPOSTCLICKCONVERSIONSCROSSENVIRONMENT = Parameters_MetricsItem "METRIC_POST_CLICK_CONVERSIONS_CROSS_ENVIRONMENT"

-- | 
pattern Parameters_MetricsItem_METRICPOSTVIEWCONVERSIONSCROSSENVIRONMENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPOSTVIEWCONVERSIONSCROSSENVIRONMENT = Parameters_MetricsItem "METRIC_POST_VIEW_CONVERSIONS_CROSS_ENVIRONMENT"

-- | 
pattern Parameters_MetricsItem_METRICPOTENTIALIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPOTENTIALIMPRESSIONS = Parameters_MetricsItem "METRIC_POTENTIAL_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICPOTENTIALVIEWS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPOTENTIALVIEWS = Parameters_MetricsItem "METRIC_POTENTIAL_VIEWS"

-- | 
pattern Parameters_MetricsItem_METRICPREMIUMFEEADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPREMIUMFEEADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_PREMIUM_FEE_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICPROGRAMMATICGUARANTEEDIMPRESSIONSPASSEDDUETOFREQUENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROGRAMMATICGUARANTEEDIMPRESSIONSPASSEDDUETOFREQUENCY = Parameters_MetricsItem "METRIC_PROGRAMMATIC_GUARANTEED_IMPRESSIONS_PASSED_DUE_TO_FREQUENCY"

-- | 
pattern Parameters_MetricsItem_METRICPROGRAMMATICGUARANTEEDSAVINGSREINVESTEDDUETOFREQUENCYADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROGRAMMATICGUARANTEEDSAVINGSREINVESTEDDUETOFREQUENCYADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_PROGRAMMATIC_GUARANTEED_SAVINGS_RE_INVESTED_DUE_TO_FREQUENCY_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICREFUNDBILLABLECOSTADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREFUNDBILLABLECOSTADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_REFUND_BILLABLE_COST_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICREFUNDMEDIACOSTADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREFUNDMEDIACOSTADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_REFUND_MEDIA_COST_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICREFUNDPLATFORMFEEADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREFUNDPLATFORMFEEADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_REFUND_PLATFORM_FEE_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICREVENUEADVERTISERCURRENCYPERSTOREVISITADXONLY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICREVENUEADVERTISERCURRENCYPERSTOREVISITADXONLY = Parameters_MetricsItem "METRIC_REVENUE_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY"

-- | 
pattern Parameters_MetricsItem_METRICRICHMEDIAENGAGEMENTS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICRICHMEDIAENGAGEMENTS = Parameters_MetricsItem "METRIC_RICH_MEDIA_ENGAGEMENTS"

-- | 
pattern Parameters_MetricsItem_METRICSTARTSAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICSTARTSAUDIO = Parameters_MetricsItem "METRIC_STARTS_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICSTOPSAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICSTOPSAUDIO = Parameters_MetricsItem "METRIC_STOPS_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICSTOREVISITSADXONLY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICSTOREVISITSADXONLY = Parameters_MetricsItem "METRIC_STORE_VISITS_ADX_ONLY"

-- | 
pattern Parameters_MetricsItem_METRICSTOREVISITCONVERSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICSTOREVISITCONVERSIONS = Parameters_MetricsItem "METRIC_STORE_VISIT_CONVERSIONS"

-- | 
pattern Parameters_MetricsItem_METRICTHIRDQUARTILEAUDIO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTHIRDQUARTILEAUDIO = Parameters_MetricsItem "METRIC_THIRD_QUARTILE_AUDIO"

-- | 
pattern Parameters_MetricsItem_METRICTIMERS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTIMERS = Parameters_MetricsItem "METRIC_TIMERS"

-- | 
pattern Parameters_MetricsItem_METRICTOTALAUDIOMEDIACOSTECPCLADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALAUDIOMEDIACOSTECPCLADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_TOTAL_AUDIO_MEDIA_COST_ECPCL_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICTOTALCONVERSIONSCROSSENVIRONMENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALCONVERSIONSCROSSENVIRONMENT = Parameters_MetricsItem "METRIC_TOTAL_CONVERSIONS_CROSS_ENVIRONMENT"

-- | 
pattern Parameters_MetricsItem_METRICTOTALDISPLAYTIME :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALDISPLAYTIME = Parameters_MetricsItem "METRIC_TOTAL_DISPLAY_TIME"

-- | 
pattern Parameters_MetricsItem_METRICTOTALIMPRESSIONCUSTOMVALUE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALIMPRESSIONCUSTOMVALUE = Parameters_MetricsItem "METRIC_TOTAL_IMPRESSION_CUSTOM_VALUE"

-- | 
pattern Parameters_MetricsItem_METRICTOTALINTERACTIONTIME :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALINTERACTIONTIME = Parameters_MetricsItem "METRIC_TOTAL_INTERACTION_TIME"

-- | 
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTADVERTISERCURRENCYPERSTOREVISITADXONLY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALMEDIACOSTADVERTISERCURRENCYPERSTOREVISITADXONLY = Parameters_MetricsItem "METRIC_TOTAL_MEDIA_COST_ADVERTISER_CURRENCY_PER_STORE_VISIT_ADX_ONLY"

-- | 
pattern Parameters_MetricsItem_METRICTOTALUSERS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALUSERS = Parameters_MetricsItem "METRIC_TOTAL_USERS"

-- | 
pattern Parameters_MetricsItem_METRICTRACKEDADS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRACKEDADS = Parameters_MetricsItem "METRIC_TRACKED_ADS"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWGENERALINVALIDTRAFFICGIVTVIEWS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWGENERALINVALIDTRAFFICGIVTVIEWS = Parameters_MetricsItem "METRIC_TRUEVIEW_GENERAL_INVALID_TRAFFIC_GIVT_VIEWS"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWINVALIDVIEWS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWINVALIDVIEWS = Parameters_MetricsItem "METRIC_TRUEVIEW_INVALID_VIEWS"

-- | 
pattern Parameters_MetricsItem_METRICUNIQUECOOKIESWITHIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICUNIQUECOOKIESWITHIMPRESSIONS = Parameters_MetricsItem "METRIC_UNIQUE_COOKIES_WITH_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICUNIQUEREACHAVERAGEIMPRESSIONFREQUENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICUNIQUEREACHAVERAGEIMPRESSIONFREQUENCY = Parameters_MetricsItem "METRIC_UNIQUE_REACH_AVERAGE_IMPRESSION_FREQUENCY"

-- | 
pattern Parameters_MetricsItem_METRICUNIQUEREACHCLICKREACH :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICUNIQUEREACHCLICKREACH = Parameters_MetricsItem "METRIC_UNIQUE_REACH_CLICK_REACH"

-- | 
pattern Parameters_MetricsItem_METRICUNIQUEREACHIMPRESSIONREACH :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICUNIQUEREACHIMPRESSIONREACH = Parameters_MetricsItem "METRIC_UNIQUE_REACH_IMPRESSION_REACH"

-- | 
pattern Parameters_MetricsItem_METRICUNIQUEREACHTOTALREACH :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICUNIQUEREACHTOTALREACH = Parameters_MetricsItem "METRIC_UNIQUE_REACH_TOTAL_REACH"

-- | 
pattern Parameters_MetricsItem_METRICVERIFIABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVERIFIABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_VERIFIABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICVIDEOCLIENTCOSTECPCVADVERTISERCURRENCY :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIDEOCLIENTCOSTECPCVADVERTISERCURRENCY = Parameters_MetricsItem "METRIC_VIDEO_CLIENT_COST_ECPCV_ADVERTISER_CURRENCY"

-- | 
pattern Parameters_MetricsItem_METRICWATCHTIME :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICWATCHTIME = Parameters_MetricsItem "METRIC_WATCH_TIME"

-- | 
pattern Parameters_MetricsItem_METRICLASTTOUCHTOTALCONVERSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICLASTTOUCHTOTALCONVERSIONS = Parameters_MetricsItem "METRIC_LAST_TOUCH_TOTAL_CONVERSIONS"

-- | 
pattern Parameters_MetricsItem_METRICLASTTOUCHCLICKTHROUGHCONVERSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICLASTTOUCHCLICKTHROUGHCONVERSIONS = Parameters_MetricsItem "METRIC_LAST_TOUCH_CLICK_THROUGH_CONVERSIONS"

-- | 
pattern Parameters_MetricsItem_METRICLASTTOUCHVIEWTHROUGHCONVERSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICLASTTOUCHVIEWTHROUGHCONVERSIONS = Parameters_MetricsItem "METRIC_LAST_TOUCH_VIEW_THROUGH_CONVERSIONS"

-- | 
pattern Parameters_MetricsItem_METRICTOTALPATHS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALPATHS = Parameters_MetricsItem "METRIC_TOTAL_PATHS"

-- | 
pattern Parameters_MetricsItem_METRICTOTALEXPOSURES :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTOTALEXPOSURES = Parameters_MetricsItem "METRIC_TOTAL_EXPOSURES"

-- | 
pattern Parameters_MetricsItem_METRICPATHCONVERSIONRATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPATHCONVERSIONRATE = Parameters_MetricsItem "METRIC_PATH_CONVERSION_RATE"

-- | 
pattern Parameters_MetricsItem_METRICCONVERTINGPATHS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCONVERTINGPATHS = Parameters_MetricsItem "METRIC_CONVERTING_PATHS"

-- | 
pattern Parameters_MetricsItem_METRICACTIVITYREVENUE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICACTIVITYREVENUE = Parameters_MetricsItem "METRIC_ACTIVITY_REVENUE"

-- | 
pattern Parameters_MetricsItem_METRICPERCENTINVALIDIMPRESSIONSPREBID :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPERCENTINVALIDIMPRESSIONSPREBID = Parameters_MetricsItem "METRIC_PERCENT_INVALID_IMPRESSIONS_PREBID"

-- | 
pattern Parameters_MetricsItem_METRICGRPCORRECTEDIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGRPCORRECTEDIMPRESSIONS = Parameters_MetricsItem "METRIC_GRP_CORRECTED_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICDEMOCORRECTEDCLICKS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICDEMOCORRECTEDCLICKS = Parameters_MetricsItem "METRIC_DEMO_CORRECTED_CLICKS"

-- | 
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHBYDEMO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHBYDEMO = Parameters_MetricsItem "METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_BY_DEMO"

-- | 
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLECLICKREACHBYDEMO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLECLICKREACHBYDEMO = Parameters_MetricsItem "METRIC_VIRTUAL_PEOPLE_CLICK_REACH_BY_DEMO"

-- | 
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEAVERAGEIMPRESSIONFREQUENCYBYDEMO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEAVERAGEIMPRESSIONFREQUENCYBYDEMO = Parameters_MetricsItem "METRIC_VIRTUAL_PEOPLE_AVERAGE_IMPRESSION_FREQUENCY_BY_DEMO"

-- | 
pattern Parameters_MetricsItem_METRICDEMOCOMPOSITIONIMPRESSION :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICDEMOCOMPOSITIONIMPRESSION = Parameters_MetricsItem "METRIC_DEMO_COMPOSITION_IMPRESSION"

-- | 
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHSHAREPERCENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHSHAREPERCENT = Parameters_MetricsItem "METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_SHARE_PERCENT"

-- | 
pattern Parameters_MetricsItem_METRICDEMOPOPULATION :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICDEMOPOPULATION = Parameters_MetricsItem "METRIC_DEMO_POPULATION"

-- | 
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHPERCENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHPERCENT = Parameters_MetricsItem "METRIC_VIRTUAL_PEOPLE_IMPRESSION_REACH_PERCENT"

-- | 
pattern Parameters_MetricsItem_METRICTARGETRATINGPOINTS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTARGETRATINGPOINTS = Parameters_MetricsItem "METRIC_TARGET_RATING_POINTS"

-- | 
pattern Parameters_MetricsItem_METRICPROVISIONALIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPROVISIONALIMPRESSIONS = Parameters_MetricsItem "METRIC_PROVISIONAL_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICVENDORBLOCKEDADS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVENDORBLOCKEDADS = Parameters_MetricsItem "METRIC_VENDOR_BLOCKED_ADS"

-- | 
pattern Parameters_MetricsItem_METRICGRPCORRECTEDVIEWABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGRPCORRECTEDVIEWABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_GRP_CORRECTED_VIEWABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICGRPCORRECTEDVIEWABLEIMPRESSIONSSHAREPERCENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICGRPCORRECTEDVIEWABLEIMPRESSIONSSHAREPERCENT = Parameters_MetricsItem "METRIC_GRP_CORRECTED_VIEWABLE_IMPRESSIONS_SHARE_PERCENT"

-- | 
pattern Parameters_MetricsItem_METRICVIEWABLEGROSSRATINGPOINTS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIEWABLEGROSSRATINGPOINTS = Parameters_MetricsItem "METRIC_VIEWABLE_GROSS_RATING_POINTS"

-- | 
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEAVERAGEVIEWABLEIMPRESSIONFREQUENCYBYDEMO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEAVERAGEVIEWABLEIMPRESSIONFREQUENCYBYDEMO = Parameters_MetricsItem "METRIC_VIRTUAL_PEOPLE_AVERAGE_VIEWABLE_IMPRESSION_FREQUENCY_BY_DEMO"

-- | 
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHBYDEMO :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHBYDEMO = Parameters_MetricsItem "METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_BY_DEMO"

-- | 
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHPERCENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHPERCENT = Parameters_MetricsItem "METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_PERCENT"

-- | 
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHSHAREPERCENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHSHAREPERCENT = Parameters_MetricsItem "METRIC_VIRTUAL_PEOPLE_VIEWABLE_IMPRESSION_REACH_SHARE_PERCENT"

-- | 
pattern Parameters_MetricsItem_METRICENGAGEMENTRATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICENGAGEMENTRATE = Parameters_MetricsItem "METRIC_ENGAGEMENT_RATE"

-- | 
pattern Parameters_MetricsItem_METRICCM360POSTVIEWREVENUE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCM360POSTVIEWREVENUE = Parameters_MetricsItem "METRIC_CM360_POST_VIEW_REVENUE"

-- | 
pattern Parameters_MetricsItem_METRICCM360POSTCLICKREVENUE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCM360POSTCLICKREVENUE = Parameters_MetricsItem "METRIC_CM360_POST_CLICK_REVENUE"

-- | 
pattern Parameters_MetricsItem_METRICCM360POSTCLICKREVENUECROSSENVIRONMENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCM360POSTCLICKREVENUECROSSENVIRONMENT = Parameters_MetricsItem "METRIC_CM360_POST_CLICK_REVENUE_CROSS_ENVIRONMENT"

-- | 
pattern Parameters_MetricsItem_METRICCM360POSTVIEWREVENUECROSSENVIRONMENT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCM360POSTVIEWREVENUECROSSENVIRONMENT = Parameters_MetricsItem "METRIC_CM360_POST_VIEW_REVENUE_CROSS_ENVIRONMENT"

-- | 
pattern Parameters_MetricsItem_METRICPERCENTAGEFROMCURRENTIOGOAL :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICPERCENTAGEFROMCURRENTIOGOAL = Parameters_MetricsItem "METRIC_PERCENTAGE_FROM_CURRENT_IO_GOAL"

-- | 
pattern Parameters_MetricsItem_METRICDUPLICATEFLOODLIGHTIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICDUPLICATEFLOODLIGHTIMPRESSIONS = Parameters_MetricsItem "METRIC_DUPLICATE_FLOODLIGHT_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICCOOKIECONSENTEDFLOODLIGHTIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCOOKIECONSENTEDFLOODLIGHTIMPRESSIONS = Parameters_MetricsItem "METRIC_COOKIE_CONSENTED_FLOODLIGHT_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICCOOKIEUNCONSENTEDFLOODLIGHTIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICCOOKIEUNCONSENTEDFLOODLIGHTIMPRESSIONS = Parameters_MetricsItem "METRIC_COOKIE_UNCONSENTED_FLOODLIGHT_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICTRACKINGUNCONSENTEDCLICKS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRACKINGUNCONSENTEDCLICKS = Parameters_MetricsItem "METRIC_TRACKING_UNCONSENTED_CLICKS"

-- | 
pattern Parameters_MetricsItem_METRICIMPRESSIONLOSSTARGETEDIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICIMPRESSIONLOSSTARGETEDIMPRESSIONS = Parameters_MetricsItem "METRIC_IMPRESSION_LOSS_TARGETED_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICLINEITEMBIDRESPONSECOUNT :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICLINEITEMBIDRESPONSECOUNT = Parameters_MetricsItem "METRIC_LINEITEM_BID_RESPONSE_COUNT"

-- | 
pattern Parameters_MetricsItem_METRICWINLOSSRATE :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICWINLOSSRATE = Parameters_MetricsItem "METRIC_WIN_LOSS_RATE"

-- | 
pattern Parameters_MetricsItem_METRICWINLOSSDEALAVAILABLEREQUESTS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICWINLOSSDEALAVAILABLEREQUESTS = Parameters_MetricsItem "METRIC_WIN_LOSS_DEAL_AVAILABLE_REQUESTS"

-- | 
pattern Parameters_MetricsItem_METRICWINLOSSLINEITEMAVAILABLEREQUESTS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICWINLOSSLINEITEMAVAILABLEREQUESTS = Parameters_MetricsItem "METRIC_WIN_LOSS_LINEITEM_AVAILABLE_REQUESTS"

-- | 
pattern Parameters_MetricsItem_METRICWINLOSSDEALTARGETEDIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICWINLOSSDEALTARGETEDIMPRESSIONS = Parameters_MetricsItem "METRIC_WIN_LOSS_DEAL_TARGETED_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICWINLOSSLINEITEMTARGETEDIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICWINLOSSLINEITEMTARGETEDIMPRESSIONS = Parameters_MetricsItem "METRIC_WIN_LOSS_LINEITEM_TARGETED_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICVERIFICATIONVIDEOPLAYERSIZEMEASURABLEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICVERIFICATIONVIDEOPLAYERSIZEMEASURABLEIMPRESSIONS = Parameters_MetricsItem "METRIC_VERIFICATION_VIDEO_PLAYER_SIZE_MEASURABLE_IMPRESSIONS"

-- | 
pattern Parameters_MetricsItem_METRICTRUEVIEWALLADSEQUENCEIMPRESSIONS :: Parameters_MetricsItem
pattern Parameters_MetricsItem_METRICTRUEVIEWALLADSEQUENCEIMPRESSIONS = Parameters_MetricsItem "METRIC_TRUEVIEW_ALL_AD_SEQUENCE_IMPRESSIONS"

{-# COMPLETE
  Parameters_MetricsItem_METRICUNKNOWN,
  Parameters_MetricsItem_METRICIMPRESSIONS,
  Parameters_MetricsItem_METRICCLICKS,
  Parameters_MetricsItem_METRICLASTIMPRESSIONS,
  Parameters_MetricsItem_METRICLASTCLICKS,
  Parameters_MetricsItem_METRICTOTALCONVERSIONS,
  Parameters_MetricsItem_METRICMEDIACOSTADVERTISER,
  Parameters_MetricsItem_METRICMEDIACOSTUSD,
  Parameters_MetricsItem_METRICMEDIACOSTPARTNER,
  Parameters_MetricsItem_METRICDATACOSTADVERTISER,
  Parameters_MetricsItem_METRICDATACOSTUSD,
  Parameters_MetricsItem_METRICDATACOSTPARTNER,
  Parameters_MetricsItem_METRICCPMFEE1ADVERTISER,
  Parameters_MetricsItem_METRICCPMFEE1USD,
  Parameters_MetricsItem_METRICCPMFEE1PARTNER,
  Parameters_MetricsItem_METRICCPMFEE2ADVERTISER,
  Parameters_MetricsItem_METRICCPMFEE2USD,
  Parameters_MetricsItem_METRICCPMFEE2PARTNER,
  Parameters_MetricsItem_METRICMEDIAFEE1ADVERTISER,
  Parameters_MetricsItem_METRICMEDIAFEE1USD,
  Parameters_MetricsItem_METRICMEDIAFEE1PARTNER,
  Parameters_MetricsItem_METRICMEDIAFEE2ADVERTISER,
  Parameters_MetricsItem_METRICMEDIAFEE2USD,
  Parameters_MetricsItem_METRICMEDIAFEE2PARTNER,
  Parameters_MetricsItem_METRICREVENUEADVERTISER,
  Parameters_MetricsItem_METRICREVENUEUSD,
  Parameters_MetricsItem_METRICREVENUEPARTNER,
  Parameters_MetricsItem_METRICPROFITADVERTISER,
  Parameters_MetricsItem_METRICPROFITUSD,
  Parameters_MetricsItem_METRICPROFITPARTNER,
  Parameters_MetricsItem_METRICPROFITMARGIN,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTUSD,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTPARTNER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTADVERTISER,
  Parameters_MetricsItem_METRICBILLABLECOSTUSD,
  Parameters_MetricsItem_METRICBILLABLECOSTPARTNER,
  Parameters_MetricsItem_METRICBILLABLECOSTADVERTISER,
  Parameters_MetricsItem_METRICPLATFORMFEEUSD,
  Parameters_MetricsItem_METRICPLATFORMFEEPARTNER,
  Parameters_MetricsItem_METRICPLATFORMFEEADVERTISER,
  Parameters_MetricsItem_METRICVIDEOCOMPLETIONRATE,
  Parameters_MetricsItem_METRICPROFITECPMADVERTISER,
  Parameters_MetricsItem_METRICPROFITECPMUSD,
  Parameters_MetricsItem_METRICPROFITECPMPARTNER,
  Parameters_MetricsItem_METRICREVENUEECPMADVERTISER,
  Parameters_MetricsItem_METRICREVENUEECPMUSD,
  Parameters_MetricsItem_METRICREVENUEECPMPARTNER,
  Parameters_MetricsItem_METRICREVENUEECPCADVERTISER,
  Parameters_MetricsItem_METRICREVENUEECPCUSD,
  Parameters_MetricsItem_METRICREVENUEECPCPARTNER,
  Parameters_MetricsItem_METRICREVENUEECPAADVERTISER,
  Parameters_MetricsItem_METRICREVENUEECPAUSD,
  Parameters_MetricsItem_METRICREVENUEECPAPARTNER,
  Parameters_MetricsItem_METRICREVENUEECPAPVADVERTISER,
  Parameters_MetricsItem_METRICREVENUEECPAPVUSD,
  Parameters_MetricsItem_METRICREVENUEECPAPVPARTNER,
  Parameters_MetricsItem_METRICREVENUEECPAPCADVERTISER,
  Parameters_MetricsItem_METRICREVENUEECPAPCUSD,
  Parameters_MetricsItem_METRICREVENUEECPAPCPARTNER,
  Parameters_MetricsItem_METRICMEDIACOSTECPMADVERTISER,
  Parameters_MetricsItem_METRICMEDIACOSTECPMUSD,
  Parameters_MetricsItem_METRICMEDIACOSTECPMPARTNER,
  Parameters_MetricsItem_METRICMEDIACOSTECPCADVERTISER,
  Parameters_MetricsItem_METRICMEDIACOSTECPCUSD,
  Parameters_MetricsItem_METRICMEDIACOSTECPCPARTNER,
  Parameters_MetricsItem_METRICMEDIACOSTECPAADVERTISER,
  Parameters_MetricsItem_METRICMEDIACOSTECPAUSD,
  Parameters_MetricsItem_METRICMEDIACOSTECPAPARTNER,
  Parameters_MetricsItem_METRICMEDIACOSTECPAPVADVERTISER,
  Parameters_MetricsItem_METRICMEDIACOSTECPAPVUSD,
  Parameters_MetricsItem_METRICMEDIACOSTECPAPVPARTNER,
  Parameters_MetricsItem_METRICMEDIACOSTECPAPCADVERTISER,
  Parameters_MetricsItem_METRICMEDIACOSTECPAPCUSD,
  Parameters_MetricsItem_METRICMEDIACOSTECPAPCPARTNER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMADVERTISER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMUSD,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPMPARTNER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCADVERTISER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCUSD,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCPARTNER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAADVERTISER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAUSD,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPARTNER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVADVERTISER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVUSD,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPVPARTNER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCADVERTISER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCUSD,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPAPCPARTNER,
  Parameters_MetricsItem_METRICRICHMEDIAVIDEOPLAYS,
  Parameters_MetricsItem_METRICRICHMEDIAVIDEOCOMPLETIONS,
  Parameters_MetricsItem_METRICRICHMEDIAVIDEOPAUSES,
  Parameters_MetricsItem_METRICRICHMEDIAVIDEOMUTES,
  Parameters_MetricsItem_METRICRICHMEDIAVIDEOMIDPOINTS,
  Parameters_MetricsItem_METRICRICHMEDIAVIDEOFULLSCREENS,
  Parameters_MetricsItem_METRICRICHMEDIAVIDEOFIRSTQUARTILECOMPLETES,
  Parameters_MetricsItem_METRICRICHMEDIAVIDEOTHIRDQUARTILECOMPLETES,
  Parameters_MetricsItem_METRICCLICKTOPOSTCLICKCONVERSIONRATE,
  Parameters_MetricsItem_METRICIMPRESSIONSTOCONVERSIONRATE,
  Parameters_MetricsItem_METRICCONVERSIONSPERMILLE,
  Parameters_MetricsItem_METRICCTR,
  Parameters_MetricsItem_METRICBIDREQUESTS,
  Parameters_MetricsItem_METRICUNIQUEVISITORSCOOKIES,
  Parameters_MetricsItem_METRICREVENUEECPCVADVERTISER,
  Parameters_MetricsItem_METRICREVENUEECPCVUSD,
  Parameters_MetricsItem_METRICREVENUEECPCVPARTNER,
  Parameters_MetricsItem_METRICMEDIACOSTECPCVADVERTISER,
  Parameters_MetricsItem_METRICMEDIACOSTECPCVUSD,
  Parameters_MetricsItem_METRICMEDIACOSTECPCVPARTNER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVADVERTISER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVUSD,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTECPCVPARTNER,
  Parameters_MetricsItem_METRICRICHMEDIAVIDEOSKIPS,
  Parameters_MetricsItem_METRICFEE2ADVERTISER,
  Parameters_MetricsItem_METRICFEE2USD,
  Parameters_MetricsItem_METRICFEE2PARTNER,
  Parameters_MetricsItem_METRICFEE3ADVERTISER,
  Parameters_MetricsItem_METRICFEE3USD,
  Parameters_MetricsItem_METRICFEE3PARTNER,
  Parameters_MetricsItem_METRICFEE4ADVERTISER,
  Parameters_MetricsItem_METRICFEE4USD,
  Parameters_MetricsItem_METRICFEE4PARTNER,
  Parameters_MetricsItem_METRICFEE5ADVERTISER,
  Parameters_MetricsItem_METRICFEE5USD,
  Parameters_MetricsItem_METRICFEE5PARTNER,
  Parameters_MetricsItem_METRICFEE6ADVERTISER,
  Parameters_MetricsItem_METRICFEE6USD,
  Parameters_MetricsItem_METRICFEE6PARTNER,
  Parameters_MetricsItem_METRICFEE7ADVERTISER,
  Parameters_MetricsItem_METRICFEE7USD,
  Parameters_MetricsItem_METRICFEE7PARTNER,
  Parameters_MetricsItem_METRICFEE8ADVERTISER,
  Parameters_MetricsItem_METRICFEE8USD,
  Parameters_MetricsItem_METRICFEE8PARTNER,
  Parameters_MetricsItem_METRICFEE9ADVERTISER,
  Parameters_MetricsItem_METRICFEE9USD,
  Parameters_MetricsItem_METRICFEE9PARTNER,
  Parameters_MetricsItem_METRICFEE10ADVERTISER,
  Parameters_MetricsItem_METRICFEE10USD,
  Parameters_MetricsItem_METRICFEE10PARTNER,
  Parameters_MetricsItem_METRICFEE11ADVERTISER,
  Parameters_MetricsItem_METRICFEE11USD,
  Parameters_MetricsItem_METRICFEE11PARTNER,
  Parameters_MetricsItem_METRICFEE12ADVERTISER,
  Parameters_MetricsItem_METRICFEE12USD,
  Parameters_MetricsItem_METRICFEE12PARTNER,
  Parameters_MetricsItem_METRICFEE13ADVERTISER,
  Parameters_MetricsItem_METRICFEE13USD,
  Parameters_MetricsItem_METRICFEE13PARTNER,
  Parameters_MetricsItem_METRICFEE14ADVERTISER,
  Parameters_MetricsItem_METRICFEE14USD,
  Parameters_MetricsItem_METRICFEE14PARTNER,
  Parameters_MetricsItem_METRICFEE15ADVERTISER,
  Parameters_MetricsItem_METRICFEE15USD,
  Parameters_MetricsItem_METRICFEE15PARTNER,
  Parameters_MetricsItem_METRICCPMFEE3ADVERTISER,
  Parameters_MetricsItem_METRICCPMFEE3USD,
  Parameters_MetricsItem_METRICCPMFEE3PARTNER,
  Parameters_MetricsItem_METRICCPMFEE4ADVERTISER,
  Parameters_MetricsItem_METRICCPMFEE4USD,
  Parameters_MetricsItem_METRICCPMFEE4PARTNER,
  Parameters_MetricsItem_METRICCPMFEE5ADVERTISER,
  Parameters_MetricsItem_METRICCPMFEE5USD,
  Parameters_MetricsItem_METRICCPMFEE5PARTNER,
  Parameters_MetricsItem_METRICMEDIAFEE3ADVERTISER,
  Parameters_MetricsItem_METRICMEDIAFEE3USD,
  Parameters_MetricsItem_METRICMEDIAFEE3PARTNER,
  Parameters_MetricsItem_METRICMEDIAFEE4ADVERTISER,
  Parameters_MetricsItem_METRICMEDIAFEE4USD,
  Parameters_MetricsItem_METRICMEDIAFEE4PARTNER,
  Parameters_MetricsItem_METRICMEDIAFEE5ADVERTISER,
  Parameters_MetricsItem_METRICMEDIAFEE5USD,
  Parameters_MetricsItem_METRICMEDIAFEE5PARTNER,
  Parameters_MetricsItem_METRICVIDEOCOMPANIONIMPRESSIONS,
  Parameters_MetricsItem_METRICVIDEOCOMPANIONCLICKS,
  Parameters_MetricsItem_METRICFEE16ADVERTISER,
  Parameters_MetricsItem_METRICFEE16USD,
  Parameters_MetricsItem_METRICFEE16PARTNER,
  Parameters_MetricsItem_METRICFEE17ADVERTISER,
  Parameters_MetricsItem_METRICFEE17USD,
  Parameters_MetricsItem_METRICFEE17PARTNER,
  Parameters_MetricsItem_METRICFEE18ADVERTISER,
  Parameters_MetricsItem_METRICFEE18USD,
  Parameters_MetricsItem_METRICFEE18PARTNER,
  Parameters_MetricsItem_METRICTRUEVIEWVIEWS,
  Parameters_MetricsItem_METRICTRUEVIEWUNIQUEVIEWERS,
  Parameters_MetricsItem_METRICTRUEVIEWEARNEDVIEWS,
  Parameters_MetricsItem_METRICTRUEVIEWEARNEDSUBSCRIBERS,
  Parameters_MetricsItem_METRICTRUEVIEWEARNEDPLAYLISTADDITIONS,
  Parameters_MetricsItem_METRICTRUEVIEWEARNEDLIKES,
  Parameters_MetricsItem_METRICTRUEVIEWEARNEDSHARES,
  Parameters_MetricsItem_METRICTRUEVIEWIMPRESSIONSHARE,
  Parameters_MetricsItem_METRICTRUEVIEWLOSTISBUDGET,
  Parameters_MetricsItem_METRICTRUEVIEWLOSTISRANK,
  Parameters_MetricsItem_METRICTRUEVIEWVIEWTHROUGHCONVERSION,
  Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONMANYPERVIEW,
  Parameters_MetricsItem_METRICTRUEVIEWVIEWRATE,
  Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONRATEONEPERVIEW,
  Parameters_MetricsItem_METRICTRUEVIEWCPVADVERTISER,
  Parameters_MetricsItem_METRICTRUEVIEWCPVUSD,
  Parameters_MetricsItem_METRICTRUEVIEWCPVPARTNER,
  Parameters_MetricsItem_METRICFEE19ADVERTISER,
  Parameters_MetricsItem_METRICFEE19USD,
  Parameters_MetricsItem_METRICFEE19PARTNER,
  Parameters_MetricsItem_METRICTEATRUEVIEWIMPRESSIONS,
  Parameters_MetricsItem_METRICTEATRUEVIEWUNIQUECOOKIES,
  Parameters_MetricsItem_METRICFEE20ADVERTISER,
  Parameters_MetricsItem_METRICFEE20USD,
  Parameters_MetricsItem_METRICFEE20PARTNER,
  Parameters_MetricsItem_METRICFEE21ADVERTISER,
  Parameters_MetricsItem_METRICFEE21USD,
  Parameters_MetricsItem_METRICFEE21PARTNER,
  Parameters_MetricsItem_METRICFEE22ADVERTISER,
  Parameters_MetricsItem_METRICFEE22USD,
  Parameters_MetricsItem_METRICFEE22PARTNER,
  Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESADVERTISER,
  Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESUSD,
  Parameters_MetricsItem_METRICTRUEVIEWTOTALCONVERSIONVALUESPARTNER,
  Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWADVERTISER,
  Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWUSD,
  Parameters_MetricsItem_METRICTRUEVIEWCONVERSIONCOSTMANYPERVIEWPARTNER,
  Parameters_MetricsItem_METRICPROFITVIEWABLEECPMADVERTISER,
  Parameters_MetricsItem_METRICPROFITVIEWABLEECPMUSD,
  Parameters_MetricsItem_METRICPROFITVIEWABLEECPMPARTNER,
  Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMADVERTISER,
  Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMUSD,
  Parameters_MetricsItem_METRICREVENUEVIEWABLEECPMPARTNER,
  Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMADVERTISER,
  Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMUSD,
  Parameters_MetricsItem_METRICMEDIACOSTVIEWABLEECPMPARTNER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMADVERTISER,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMUSD,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTVIEWABLEECPMPARTNER,
  Parameters_MetricsItem_METRICTRUEVIEWENGAGEMENTS,
  Parameters_MetricsItem_METRICTRUEVIEWENGAGEMENTRATE,
  Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEADVERTISER,
  Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEUSD,
  Parameters_MetricsItem_METRICTRUEVIEWAVERAGECPEPARTNER,
  Parameters_MetricsItem_METRICACTIVEVIEWVIEWABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWELIGIBLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWMEASURABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWPCTMEASURABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWPCTVIEWABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWAVERAGEVIEWABLETIME,
  Parameters_MetricsItem_METRICACTIVEVIEWUNMEASURABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWUNVIEWABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONUNMEASURABLE,
  Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONUNVIEWABLE,
  Parameters_MetricsItem_METRICACTIVEVIEWDISTRIBUTIONVIEWABLE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVIEWABLEFORTIMETHRESHOLD,
  Parameters_MetricsItem_METRICACTIVEVIEWVIEWABLEFORTIMETHRESHOLD,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEATSTART,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEFIRSTQUAR,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLESECONDQUAR,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLETHIRDQUAR,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTVISIBLEONCOMPLETE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEATSTART,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEFIRSTQUAR,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLESECONDQUAR,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLETHIRDQUAR,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEVISIBLEONCOMPLETE,
  Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEVISIBLEONCOMPLETEIMPRESSIONS,
  Parameters_MetricsItem_METRICVIEWABLEBIDREQUESTS,
  Parameters_MetricsItem_METRICCOOKIEREACHIMPRESSIONREACH,
  Parameters_MetricsItem_METRICCOOKIEREACHAVERAGEIMPRESSIONFREQUENCY,
  Parameters_MetricsItem_METRICDBMENGAGEMENTRATE,
  Parameters_MetricsItem_METRICRICHMEDIASCROLLS,
  Parameters_MetricsItem_METRICCMPOSTVIEWREVENUE,
  Parameters_MetricsItem_METRICCMPOSTCLICKREVENUE,
  Parameters_MetricsItem_METRICFLOODLIGHTIMPRESSIONS,
  Parameters_MetricsItem_METRICBILLABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICNIELSENAVERAGEFREQUENCY,
  Parameters_MetricsItem_METRICNIELSENIMPRESSIONS,
  Parameters_MetricsItem_METRICNIELSENUNIQUEAUDIENCE,
  Parameters_MetricsItem_METRICNIELSENGRP,
  Parameters_MetricsItem_METRICNIELSENIMPRESSIONINDEX,
  Parameters_MetricsItem_METRICNIELSENIMPRESSIONSSHARE,
  Parameters_MetricsItem_METRICNIELSENPOPULATION,
  Parameters_MetricsItem_METRICNIELSENPOPULATIONREACH,
  Parameters_MetricsItem_METRICNIELSENPOPULATIONSHARE,
  Parameters_MetricsItem_METRICNIELSENREACHINDEX,
  Parameters_MetricsItem_METRICNIELSENREACHSHARE,
  Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONMEASURABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONRATE,
  Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWMEASURABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWAUDIBLEFULLYONSCREENHALFOFDURATIONTRUEVIEWRATE,
  Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICMEASURABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICVIEWABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWCUSTOMMETRICVIEWABLERATE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTAUDIBLEIMPRESSIONS,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTFULLYONSCREEN2SEC,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTFULLSCREEN,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTINBACKGROUND,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFADPLAYED,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFCOMPLETEDIMPRESSIONSAUDIBLEANDVISIBLE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFCOMPLETEDIMPRESSIONSVISIBLE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFFIRSTQUARTILEIMPRESSIONSAUDIBLEANDVISIBLE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFFIRSTQUARTILEIMPRESSIONSVISIBLE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFMIDPOINTIMPRESSIONSAUDIBLEANDVISIBLE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFMIDPOINTIMPRESSIONSVISIBLE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFTHIRDQUARTILEIMPRESSIONSAUDIBLEANDVISIBLE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTOFTHIRDQUARTILEIMPRESSIONSVISIBLE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEAUDIBLE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEAUDIBLEANDVISIBLE,
  Parameters_MetricsItem_METRICACTIVEVIEWPERCENTPLAYTIMEVISIBLE,
  Parameters_MetricsItem_METRICADAPTEDAUDIENCEFREQUENCY,
  Parameters_MetricsItem_METRICADLINGOFEEADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICAUDIOCLIENTCOSTECPCLADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICAUDIOMEDIACOSTECPCLADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICAUDIOMUTESAUDIO,
  Parameters_MetricsItem_METRICAUDIOREVENUEECPCLADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICAUDIOUNMUTESAUDIO,
  Parameters_MetricsItem_METRICAUDIOUNMUTESVIDEO,
  Parameters_MetricsItem_METRICAVERAGEDISPLAYTIME,
  Parameters_MetricsItem_METRICAVERAGEIMPRESSIONFREQUENCYPERUSER,
  Parameters_MetricsItem_METRICAVERAGEINTERACTIONTIME,
  Parameters_MetricsItem_METRICAVERAGEWATCHTIMEPERIMPRESSION,
  Parameters_MetricsItem_METRICBEGINTORENDERELIGIBLEIMPRESSIONS,
  Parameters_MetricsItem_METRICBEGINTORENDERIMPRESSIONS,
  Parameters_MetricsItem_METRICBENCHMARKFREQUENCY,
  Parameters_MetricsItem_METRICBRANDLIFTABSOLUTEBRANDLIFT,
  Parameters_MetricsItem_METRICBRANDLIFTALLSURVEYRESPONSES,
  Parameters_MetricsItem_METRICBRANDLIFTBASELINEPOSITIVERESPONSERATE,
  Parameters_MetricsItem_METRICBRANDLIFTBASELINESURVEYRESPONSES,
  Parameters_MetricsItem_METRICBRANDLIFTCOSTPERLIFTEDUSER,
  Parameters_MetricsItem_METRICBRANDLIFTEXPOSEDSURVEYRESPONSES,
  Parameters_MetricsItem_METRICBRANDLIFTHEADROOMBRANDLIFT,
  Parameters_MetricsItem_METRICBRANDLIFTRELATIVEBRANDLIFT,
  Parameters_MetricsItem_METRICBRANDLIFTUSERS,
  Parameters_MetricsItem_METRICCARDCLICKS,
  Parameters_MetricsItem_METRICCLIENTCOSTADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCLIENTCOSTECPAADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCLIENTCOSTECPAPCADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCLIENTCOSTECPAPVADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCLIENTCOSTECPCADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCLIENTCOSTECPMADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCLIENTCOSTVIEWABLEECPMADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCMPOSTCLICKREVENUECROSSENVIRONMENT,
  Parameters_MetricsItem_METRICCMPOSTVIEWREVENUECROSSENVIRONMENT,
  Parameters_MetricsItem_METRICCOMPANIONCLICKSAUDIO,
  Parameters_MetricsItem_METRICCOMPANIONIMPRESSIONSAUDIO,
  Parameters_MetricsItem_METRICCOMPLETELISTENSAUDIO,
  Parameters_MetricsItem_METRICCOMPLETIONRATEAUDIO,
  Parameters_MetricsItem_METRICCOUNTERS,
  Parameters_MetricsItem_METRICCUSTOMFEE1ADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCUSTOMFEE2ADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCUSTOMFEE3ADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCUSTOMFEE4ADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCUSTOMFEE5ADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICCUSTOMVALUEPER1000IMPRESSIONS,
  Parameters_MetricsItem_METRICENGAGEMENTS,
  Parameters_MetricsItem_METRICESTIMATEDCPMFORIMPRESSIONSWITHCUSTOMVALUEADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICESTIMATEDTOTALCOSTFORIMPRESSIONSWITHCUSTOMVALUEADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICEXITS,
  Parameters_MetricsItem_METRICEXPANSIONS,
  Parameters_MetricsItem_METRICFIRSTQUARTILEAUDIO,
  Parameters_MetricsItem_METRICGENERALINVALIDTRAFFICGIVTIMPRESSIONS,
  Parameters_MetricsItem_METRICGENERALINVALIDTRAFFICGIVTTRACKEDADS,
  Parameters_MetricsItem_METRICGIVTACTIVEVIEWELIGIBLEIMPRESSIONS,
  Parameters_MetricsItem_METRICGIVTACTIVEVIEWMEASURABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICGIVTACTIVEVIEWVIEWABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICGIVTBEGINTORENDERIMPRESSIONS,
  Parameters_MetricsItem_METRICGIVTCLICKS,
  Parameters_MetricsItem_METRICGMAILCONVERSIONS,
  Parameters_MetricsItem_METRICGMAILPOSTCLICKCONVERSIONS,
  Parameters_MetricsItem_METRICGMAILPOSTVIEWCONVERSIONS,
  Parameters_MetricsItem_METRICGMAILPOTENTIALVIEWS,
  Parameters_MetricsItem_METRICIMPRESSIONSWITHCUSTOMVALUE,
  Parameters_MetricsItem_METRICIMPRESSIONSWITHPOSITIVECUSTOMVALUE,
  Parameters_MetricsItem_METRICIMPRESSIONCUSTOMVALUECOST,
  Parameters_MetricsItem_METRICINTERACTIVEIMPRESSIONS,
  Parameters_MetricsItem_METRICINVALIDACTIVEVIEWELIGIBLEIMPRESSIONS,
  Parameters_MetricsItem_METRICINVALIDACTIVEVIEWMEASURABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICINVALIDACTIVEVIEWVIEWABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICINVALIDBEGINTORENDERIMPRESSIONS,
  Parameters_MetricsItem_METRICINVALIDCLICKS,
  Parameters_MetricsItem_METRICINVALIDIMPRESSIONS,
  Parameters_MetricsItem_METRICINVALIDTRACKEDADS,
  Parameters_MetricsItem_METRICMEDIACOSTADVERTISERCURRENCYPERSTOREVISITADXONLY,
  Parameters_MetricsItem_METRICMIDPOINTAUDIO,
  Parameters_MetricsItem_METRICORIGINALAUDIENCEFREQUENCY,
  Parameters_MetricsItem_METRICPAUSESAUDIO,
  Parameters_MetricsItem_METRICPERCENTIMPRESSIONSWITHPOSITIVECUSTOMVALUE,
  Parameters_MetricsItem_METRICPLATFORMFEERATE,
  Parameters_MetricsItem_METRICPOSTCLICKCONVERSIONSCROSSENVIRONMENT,
  Parameters_MetricsItem_METRICPOSTVIEWCONVERSIONSCROSSENVIRONMENT,
  Parameters_MetricsItem_METRICPOTENTIALIMPRESSIONS,
  Parameters_MetricsItem_METRICPOTENTIALVIEWS,
  Parameters_MetricsItem_METRICPREMIUMFEEADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICPROGRAMMATICGUARANTEEDIMPRESSIONSPASSEDDUETOFREQUENCY,
  Parameters_MetricsItem_METRICPROGRAMMATICGUARANTEEDSAVINGSREINVESTEDDUETOFREQUENCYADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICREFUNDBILLABLECOSTADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICREFUNDMEDIACOSTADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICREFUNDPLATFORMFEEADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICREVENUEADVERTISERCURRENCYPERSTOREVISITADXONLY,
  Parameters_MetricsItem_METRICRICHMEDIAENGAGEMENTS,
  Parameters_MetricsItem_METRICSTARTSAUDIO,
  Parameters_MetricsItem_METRICSTOPSAUDIO,
  Parameters_MetricsItem_METRICSTOREVISITSADXONLY,
  Parameters_MetricsItem_METRICSTOREVISITCONVERSIONS,
  Parameters_MetricsItem_METRICTHIRDQUARTILEAUDIO,
  Parameters_MetricsItem_METRICTIMERS,
  Parameters_MetricsItem_METRICTOTALAUDIOMEDIACOSTECPCLADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICTOTALCONVERSIONSCROSSENVIRONMENT,
  Parameters_MetricsItem_METRICTOTALDISPLAYTIME,
  Parameters_MetricsItem_METRICTOTALIMPRESSIONCUSTOMVALUE,
  Parameters_MetricsItem_METRICTOTALINTERACTIONTIME,
  Parameters_MetricsItem_METRICTOTALMEDIACOSTADVERTISERCURRENCYPERSTOREVISITADXONLY,
  Parameters_MetricsItem_METRICTOTALUSERS,
  Parameters_MetricsItem_METRICTRACKEDADS,
  Parameters_MetricsItem_METRICTRUEVIEWGENERALINVALIDTRAFFICGIVTVIEWS,
  Parameters_MetricsItem_METRICTRUEVIEWINVALIDVIEWS,
  Parameters_MetricsItem_METRICUNIQUECOOKIESWITHIMPRESSIONS,
  Parameters_MetricsItem_METRICUNIQUEREACHAVERAGEIMPRESSIONFREQUENCY,
  Parameters_MetricsItem_METRICUNIQUEREACHCLICKREACH,
  Parameters_MetricsItem_METRICUNIQUEREACHIMPRESSIONREACH,
  Parameters_MetricsItem_METRICUNIQUEREACHTOTALREACH,
  Parameters_MetricsItem_METRICVERIFIABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICVIDEOCLIENTCOSTECPCVADVERTISERCURRENCY,
  Parameters_MetricsItem_METRICWATCHTIME,
  Parameters_MetricsItem_METRICLASTTOUCHTOTALCONVERSIONS,
  Parameters_MetricsItem_METRICLASTTOUCHCLICKTHROUGHCONVERSIONS,
  Parameters_MetricsItem_METRICLASTTOUCHVIEWTHROUGHCONVERSIONS,
  Parameters_MetricsItem_METRICTOTALPATHS,
  Parameters_MetricsItem_METRICTOTALEXPOSURES,
  Parameters_MetricsItem_METRICPATHCONVERSIONRATE,
  Parameters_MetricsItem_METRICCONVERTINGPATHS,
  Parameters_MetricsItem_METRICACTIVITYREVENUE,
  Parameters_MetricsItem_METRICPERCENTINVALIDIMPRESSIONSPREBID,
  Parameters_MetricsItem_METRICGRPCORRECTEDIMPRESSIONS,
  Parameters_MetricsItem_METRICDEMOCORRECTEDCLICKS,
  Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHBYDEMO,
  Parameters_MetricsItem_METRICVIRTUALPEOPLECLICKREACHBYDEMO,
  Parameters_MetricsItem_METRICVIRTUALPEOPLEAVERAGEIMPRESSIONFREQUENCYBYDEMO,
  Parameters_MetricsItem_METRICDEMOCOMPOSITIONIMPRESSION,
  Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHSHAREPERCENT,
  Parameters_MetricsItem_METRICDEMOPOPULATION,
  Parameters_MetricsItem_METRICVIRTUALPEOPLEIMPRESSIONREACHPERCENT,
  Parameters_MetricsItem_METRICTARGETRATINGPOINTS,
  Parameters_MetricsItem_METRICPROVISIONALIMPRESSIONS,
  Parameters_MetricsItem_METRICVENDORBLOCKEDADS,
  Parameters_MetricsItem_METRICGRPCORRECTEDVIEWABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICGRPCORRECTEDVIEWABLEIMPRESSIONSSHAREPERCENT,
  Parameters_MetricsItem_METRICVIEWABLEGROSSRATINGPOINTS,
  Parameters_MetricsItem_METRICVIRTUALPEOPLEAVERAGEVIEWABLEIMPRESSIONFREQUENCYBYDEMO,
  Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHBYDEMO,
  Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHPERCENT,
  Parameters_MetricsItem_METRICVIRTUALPEOPLEVIEWABLEIMPRESSIONREACHSHAREPERCENT,
  Parameters_MetricsItem_METRICENGAGEMENTRATE,
  Parameters_MetricsItem_METRICCM360POSTVIEWREVENUE,
  Parameters_MetricsItem_METRICCM360POSTCLICKREVENUE,
  Parameters_MetricsItem_METRICCM360POSTCLICKREVENUECROSSENVIRONMENT,
  Parameters_MetricsItem_METRICCM360POSTVIEWREVENUECROSSENVIRONMENT,
  Parameters_MetricsItem_METRICPERCENTAGEFROMCURRENTIOGOAL,
  Parameters_MetricsItem_METRICDUPLICATEFLOODLIGHTIMPRESSIONS,
  Parameters_MetricsItem_METRICCOOKIECONSENTEDFLOODLIGHTIMPRESSIONS,
  Parameters_MetricsItem_METRICCOOKIEUNCONSENTEDFLOODLIGHTIMPRESSIONS,
  Parameters_MetricsItem_METRICTRACKINGUNCONSENTEDCLICKS,
  Parameters_MetricsItem_METRICIMPRESSIONLOSSTARGETEDIMPRESSIONS,
  Parameters_MetricsItem_METRICLINEITEMBIDRESPONSECOUNT,
  Parameters_MetricsItem_METRICWINLOSSRATE,
  Parameters_MetricsItem_METRICWINLOSSDEALAVAILABLEREQUESTS,
  Parameters_MetricsItem_METRICWINLOSSLINEITEMAVAILABLEREQUESTS,
  Parameters_MetricsItem_METRICWINLOSSDEALTARGETEDIMPRESSIONS,
  Parameters_MetricsItem_METRICWINLOSSLINEITEMTARGETEDIMPRESSIONS,
  Parameters_MetricsItem_METRICVERIFICATIONVIDEOPLAYERSIZEMEASURABLEIMPRESSIONS,
  Parameters_MetricsItem_METRICTRUEVIEWALLADSEQUENCEIMPRESSIONS,
  Parameters_MetricsItem #-}

-- | Report type.
newtype Parameters_Type = Parameters_Type { fromParameters_Type :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern Parameters_Type_TYPEGENERAL :: Parameters_Type
pattern Parameters_Type_TYPEGENERAL = Parameters_Type "TYPE_GENERAL"

-- | 
pattern Parameters_Type_TYPEAUDIENCEPERFORMANCE :: Parameters_Type
pattern Parameters_Type_TYPEAUDIENCEPERFORMANCE = Parameters_Type "TYPE_AUDIENCE_PERFORMANCE"

-- | 
pattern Parameters_Type_TYPEINVENTORYAVAILABILITY :: Parameters_Type
pattern Parameters_Type_TYPEINVENTORYAVAILABILITY = Parameters_Type "TYPE_INVENTORY_AVAILABILITY"

-- | 
pattern Parameters_Type_TYPEKEYWORD :: Parameters_Type
pattern Parameters_Type_TYPEKEYWORD = Parameters_Type "TYPE_KEYWORD"

-- | 
pattern Parameters_Type_TYPEPIXELLOAD :: Parameters_Type
pattern Parameters_Type_TYPEPIXELLOAD = Parameters_Type "TYPE_PIXEL_LOAD"

-- | 
pattern Parameters_Type_TYPEAUDIENCECOMPOSITION :: Parameters_Type
pattern Parameters_Type_TYPEAUDIENCECOMPOSITION = Parameters_Type "TYPE_AUDIENCE_COMPOSITION"

-- | 
pattern Parameters_Type_TYPECROSSPARTNER :: Parameters_Type
pattern Parameters_Type_TYPECROSSPARTNER = Parameters_Type "TYPE_CROSS_PARTNER"

-- | 
pattern Parameters_Type_TYPEPAGECATEGORY :: Parameters_Type
pattern Parameters_Type_TYPEPAGECATEGORY = Parameters_Type "TYPE_PAGE_CATEGORY"

-- | 
pattern Parameters_Type_TYPETHIRDPARTYDATAPROVIDER :: Parameters_Type
pattern Parameters_Type_TYPETHIRDPARTYDATAPROVIDER = Parameters_Type "TYPE_THIRD_PARTY_DATA_PROVIDER"

-- | 
pattern Parameters_Type_TYPECROSSPARTNERTHIRDPARTYDATAPROVIDER :: Parameters_Type
pattern Parameters_Type_TYPECROSSPARTNERTHIRDPARTYDATAPROVIDER = Parameters_Type "TYPE_CROSS_PARTNER_THIRD_PARTY_DATA_PROVIDER"

-- | 
pattern Parameters_Type_TYPECLIENTSAFE :: Parameters_Type
pattern Parameters_Type_TYPECLIENTSAFE = Parameters_Type "TYPE_CLIENT_SAFE"

-- | 
pattern Parameters_Type_TYPEORDERID :: Parameters_Type
pattern Parameters_Type_TYPEORDERID = Parameters_Type "TYPE_ORDER_ID"

-- | 
pattern Parameters_Type_TYPEFEE :: Parameters_Type
pattern Parameters_Type_TYPEFEE = Parameters_Type "TYPE_FEE"

-- | 
pattern Parameters_Type_TYPECROSSFEE :: Parameters_Type
pattern Parameters_Type_TYPECROSSFEE = Parameters_Type "TYPE_CROSS_FEE"

-- | 
pattern Parameters_Type_TYPEACTIVEGRP :: Parameters_Type
pattern Parameters_Type_TYPEACTIVEGRP = Parameters_Type "TYPE_ACTIVE_GRP"

-- | 
pattern Parameters_Type_TYPEYOUTUBEVERTICAL :: Parameters_Type
pattern Parameters_Type_TYPEYOUTUBEVERTICAL = Parameters_Type "TYPE_YOUTUBE_VERTICAL"

-- | 
pattern Parameters_Type_TYPECOMSCOREVCE :: Parameters_Type
pattern Parameters_Type_TYPECOMSCOREVCE = Parameters_Type "TYPE_COMSCORE_VCE"

-- | 
pattern Parameters_Type_TYPETRUEVIEW :: Parameters_Type
pattern Parameters_Type_TYPETRUEVIEW = Parameters_Type "TYPE_TRUEVIEW"

-- | 
pattern Parameters_Type_TYPENIELSENAUDIENCEPROFILE :: Parameters_Type
pattern Parameters_Type_TYPENIELSENAUDIENCEPROFILE = Parameters_Type "TYPE_NIELSEN_AUDIENCE_PROFILE"

-- | 
pattern Parameters_Type_TYPENIELSENDAILYREACHBUILD :: Parameters_Type
pattern Parameters_Type_TYPENIELSENDAILYREACHBUILD = Parameters_Type "TYPE_NIELSEN_DAILY_REACH_BUILD"

-- | 
pattern Parameters_Type_TYPENIELSENSITE :: Parameters_Type
pattern Parameters_Type_TYPENIELSENSITE = Parameters_Type "TYPE_NIELSEN_SITE"

-- | 
pattern Parameters_Type_TYPEREACHANDFREQUENCY :: Parameters_Type
pattern Parameters_Type_TYPEREACHANDFREQUENCY = Parameters_Type "TYPE_REACH_AND_FREQUENCY"

-- | 
pattern Parameters_Type_TYPEESTIMATEDCONVERSION :: Parameters_Type
pattern Parameters_Type_TYPEESTIMATEDCONVERSION = Parameters_Type "TYPE_ESTIMATED_CONVERSION"

-- | 
pattern Parameters_Type_TYPEVERIFICATION :: Parameters_Type
pattern Parameters_Type_TYPEVERIFICATION = Parameters_Type "TYPE_VERIFICATION"

-- | 
pattern Parameters_Type_TYPETRUEVIEWIAR :: Parameters_Type
pattern Parameters_Type_TYPETRUEVIEWIAR = Parameters_Type "TYPE_TRUEVIEW_IAR"

-- | 
pattern Parameters_Type_TYPENIELSENONLINEGLOBALMARKET :: Parameters_Type
pattern Parameters_Type_TYPENIELSENONLINEGLOBALMARKET = Parameters_Type "TYPE_NIELSEN_ONLINE_GLOBAL_MARKET"

-- | 
pattern Parameters_Type_TYPEPETRANIELSENAUDIENCEPROFILE :: Parameters_Type
pattern Parameters_Type_TYPEPETRANIELSENAUDIENCEPROFILE = Parameters_Type "TYPE_PETRA_NIELSEN_AUDIENCE_PROFILE"

-- | 
pattern Parameters_Type_TYPEPETRANIELSENDAILYREACHBUILD :: Parameters_Type
pattern Parameters_Type_TYPEPETRANIELSENDAILYREACHBUILD = Parameters_Type "TYPE_PETRA_NIELSEN_DAILY_REACH_BUILD"

-- | 
pattern Parameters_Type_TYPEPETRANIELSENONLINEGLOBALMARKET :: Parameters_Type
pattern Parameters_Type_TYPEPETRANIELSENONLINEGLOBALMARKET = Parameters_Type "TYPE_PETRA_NIELSEN_ONLINE_GLOBAL_MARKET"

-- | 
pattern Parameters_Type_TYPENOTSUPPORTED :: Parameters_Type
pattern Parameters_Type_TYPENOTSUPPORTED = Parameters_Type "TYPE_NOT_SUPPORTED"

-- | 
pattern Parameters_Type_TYPEREACHAUDIENCE :: Parameters_Type
pattern Parameters_Type_TYPEREACHAUDIENCE = Parameters_Type "TYPE_REACH_AUDIENCE"

-- | 
pattern Parameters_Type_TYPELINEARTVSEARCHLIFT :: Parameters_Type
pattern Parameters_Type_TYPELINEARTVSEARCHLIFT = Parameters_Type "TYPE_LINEAR_TV_SEARCH_LIFT"

-- | 
pattern Parameters_Type_TYPEPATH :: Parameters_Type
pattern Parameters_Type_TYPEPATH = Parameters_Type "TYPE_PATH"

-- | 
pattern Parameters_Type_TYPEPATHATTRIBUTION :: Parameters_Type
pattern Parameters_Type_TYPEPATHATTRIBUTION = Parameters_Type "TYPE_PATH_ATTRIBUTION"

{-# COMPLETE
  Parameters_Type_TYPEGENERAL,
  Parameters_Type_TYPEAUDIENCEPERFORMANCE,
  Parameters_Type_TYPEINVENTORYAVAILABILITY,
  Parameters_Type_TYPEKEYWORD,
  Parameters_Type_TYPEPIXELLOAD,
  Parameters_Type_TYPEAUDIENCECOMPOSITION,
  Parameters_Type_TYPECROSSPARTNER,
  Parameters_Type_TYPEPAGECATEGORY,
  Parameters_Type_TYPETHIRDPARTYDATAPROVIDER,
  Parameters_Type_TYPECROSSPARTNERTHIRDPARTYDATAPROVIDER,
  Parameters_Type_TYPECLIENTSAFE,
  Parameters_Type_TYPEORDERID,
  Parameters_Type_TYPEFEE,
  Parameters_Type_TYPECROSSFEE,
  Parameters_Type_TYPEACTIVEGRP,
  Parameters_Type_TYPEYOUTUBEVERTICAL,
  Parameters_Type_TYPECOMSCOREVCE,
  Parameters_Type_TYPETRUEVIEW,
  Parameters_Type_TYPENIELSENAUDIENCEPROFILE,
  Parameters_Type_TYPENIELSENDAILYREACHBUILD,
  Parameters_Type_TYPENIELSENSITE,
  Parameters_Type_TYPEREACHANDFREQUENCY,
  Parameters_Type_TYPEESTIMATEDCONVERSION,
  Parameters_Type_TYPEVERIFICATION,
  Parameters_Type_TYPETRUEVIEWIAR,
  Parameters_Type_TYPENIELSENONLINEGLOBALMARKET,
  Parameters_Type_TYPEPETRANIELSENAUDIENCEPROFILE,
  Parameters_Type_TYPEPETRANIELSENDAILYREACHBUILD,
  Parameters_Type_TYPEPETRANIELSENONLINEGLOBALMARKET,
  Parameters_Type_TYPENOTSUPPORTED,
  Parameters_Type_TYPEREACHAUDIENCE,
  Parameters_Type_TYPELINEARTVSEARCHLIFT,
  Parameters_Type_TYPEPATH,
  Parameters_Type_TYPEPATHATTRIBUTION,
  Parameters_Type #-}

-- | Indicates the position of the path the filter should match to (first, last, or any event in path).
newtype PathFilter_PathMatchPosition = PathFilter_PathMatchPosition { fromPathFilter_PathMatchPosition :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PathFilter_PathMatchPosition_Any :: PathFilter_PathMatchPosition
pattern PathFilter_PathMatchPosition_Any = PathFilter_PathMatchPosition "ANY"

-- | 
pattern PathFilter_PathMatchPosition_First :: PathFilter_PathMatchPosition
pattern PathFilter_PathMatchPosition_First = PathFilter_PathMatchPosition "FIRST"

-- | 
pattern PathFilter_PathMatchPosition_Last :: PathFilter_PathMatchPosition
pattern PathFilter_PathMatchPosition_Last = PathFilter_PathMatchPosition "LAST"

{-# COMPLETE
  PathFilter_PathMatchPosition_Any,
  PathFilter_PathMatchPosition_First,
  PathFilter_PathMatchPosition_Last,
  PathFilter_PathMatchPosition #-}

-- | Dimension the filter is applied to.
newtype PathQueryOptionsFilter_Filter = PathQueryOptionsFilter_Filter { fromPathQueryOptionsFilter_Filter :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERUNKNOWN :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERUNKNOWN = PathQueryOptionsFilter_Filter "FILTER_UNKNOWN"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDATE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDATE = PathQueryOptionsFilter_Filter "FILTER_DATE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDAYOFWEEK :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDAYOFWEEK = PathQueryOptionsFilter_Filter "FILTER_DAY_OF_WEEK"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERWEEK :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERWEEK = PathQueryOptionsFilter_Filter "FILTER_WEEK"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERMONTH :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERMONTH = PathQueryOptionsFilter_Filter "FILTER_MONTH"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERYEAR :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERYEAR = PathQueryOptionsFilter_Filter "FILTER_YEAR"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTIMEOFDAY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTIMEOFDAY = PathQueryOptionsFilter_Filter "FILTER_TIME_OF_DAY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCONVERSIONDELAY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCONVERSIONDELAY = PathQueryOptionsFilter_Filter "FILTER_CONVERSION_DELAY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEID = PathQueryOptionsFilter_Filter "FILTER_CREATIVE_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVESIZE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVESIZE = PathQueryOptionsFilter_Filter "FILTER_CREATIVE_SIZE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVETYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVETYPE = PathQueryOptionsFilter_Filter "FILTER_CREATIVE_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTEREXCHANGEID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTEREXCHANGEID = PathQueryOptionsFilter_Filter "FILTER_EXCHANGE_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERADPOSITION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERADPOSITION = PathQueryOptionsFilter_Filter "FILTER_AD_POSITION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPUBLICINVENTORY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPUBLICINVENTORY = PathQueryOptionsFilter_Filter "FILTER_PUBLIC_INVENTORY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCE = PathQueryOptionsFilter_Filter "FILTER_INVENTORY_SOURCE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCITY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCITY = PathQueryOptionsFilter_Filter "FILTER_CITY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERREGION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERREGION = PathQueryOptionsFilter_Filter "FILTER_REGION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDMA :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDMA = PathQueryOptionsFilter_Filter "FILTER_DMA"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCOUNTRY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCOUNTRY = PathQueryOptionsFilter_Filter "FILTER_COUNTRY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERSITEID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERSITEID = PathQueryOptionsFilter_Filter "FILTER_SITE_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCHANNELID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCHANNELID = PathQueryOptionsFilter_Filter "FILTER_CHANNEL_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPARTNER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPARTNER = PathQueryOptionsFilter_Filter "FILTER_PARTNER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISER = PathQueryOptionsFilter_Filter "FILTER_ADVERTISER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDER = PathQueryOptionsFilter_Filter "FILTER_INSERTION_ORDER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEM :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEM = PathQueryOptionsFilter_Filter "FILTER_LINE_ITEM"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPARTNERCURRENCY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPARTNERCURRENCY = PathQueryOptionsFilter_Filter "FILTER_PARTNER_CURRENCY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISERCURRENCY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISERCURRENCY = PathQueryOptionsFilter_Filter "FILTER_ADVERTISER_CURRENCY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISERTIMEZONE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISERTIMEZONE = PathQueryOptionsFilter_Filter "FILTER_ADVERTISER_TIMEZONE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMTYPE = PathQueryOptionsFilter_Filter "FILTER_LINE_ITEM_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERUSERLIST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERUSERLIST = PathQueryOptionsFilter_Filter "FILTER_USER_LIST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERUSERLISTFIRSTPARTY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERUSERLISTFIRSTPARTY = PathQueryOptionsFilter_Filter "FILTER_USER_LIST_FIRST_PARTY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERUSERLISTTHIRDPARTY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERUSERLISTTHIRDPARTY = PathQueryOptionsFilter_Filter "FILTER_USER_LIST_THIRD_PARTY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTARGETEDUSERLIST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTARGETEDUSERLIST = PathQueryOptionsFilter_Filter "FILTER_TARGETED_USER_LIST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDATAPROVIDER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDATAPROVIDER = PathQueryOptionsFilter_Filter "FILTER_DATA_PROVIDER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERORDERID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERORDERID = PathQueryOptionsFilter_Filter "FILTER_ORDER_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOPLAYERSIZE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOPLAYERSIZE = PathQueryOptionsFilter_Filter "FILTER_VIDEO_PLAYER_SIZE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEODURATIONSECONDS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEODURATIONSECONDS = PathQueryOptionsFilter_Filter "FILTER_VIDEO_DURATION_SECONDS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERKEYWORD :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERKEYWORD = PathQueryOptionsFilter_Filter "FILTER_KEYWORD"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPAGECATEGORY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPAGECATEGORY = PathQueryOptionsFilter_Filter "FILTER_PAGE_CATEGORY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCAMPAIGNDAILYFREQUENCY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCAMPAIGNDAILYFREQUENCY = PathQueryOptionsFilter_Filter "FILTER_CAMPAIGN_DAILY_FREQUENCY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMDAILYFREQUENCY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMDAILYFREQUENCY = PathQueryOptionsFilter_Filter "FILTER_LINE_ITEM_DAILY_FREQUENCY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMLIFETIMEFREQUENCY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMLIFETIMEFREQUENCY = PathQueryOptionsFilter_Filter "FILTER_LINE_ITEM_LIFETIME_FREQUENCY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTEROS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTEROS = PathQueryOptionsFilter_Filter "FILTER_OS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERBROWSER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERBROWSER = PathQueryOptionsFilter_Filter "FILTER_BROWSER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCARRIER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCARRIER = PathQueryOptionsFilter_Filter "FILTER_CARRIER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERSITELANGUAGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERSITELANGUAGE = PathQueryOptionsFilter_Filter "FILTER_SITE_LANGUAGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYFORMAT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYFORMAT = PathQueryOptionsFilter_Filter "FILTER_INVENTORY_FORMAT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERZIPCODE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERZIPCODE = PathQueryOptionsFilter_Filter "FILTER_ZIP_CODE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEORATINGTIER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEORATINGTIER = PathQueryOptionsFilter_Filter "FILTER_VIDEO_RATING_TIER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOFORMATSUPPORT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOFORMATSUPPORT = PathQueryOptionsFilter_Filter "FILTER_VIDEO_FORMAT_SUPPORT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOSKIPPABLESUPPORT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOSKIPPABLESUPPORT = PathQueryOptionsFilter_Filter "FILTER_VIDEO_SKIPPABLE_SUPPORT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCREATIVEDURATION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCREATIVEDURATION = PathQueryOptionsFilter_Filter "FILTER_VIDEO_CREATIVE_DURATION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPAGELAYOUT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPAGELAYOUT = PathQueryOptionsFilter_Filter "FILTER_PAGE_LAYOUT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOADPOSITIONINSTREAM :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOADPOSITIONINSTREAM = PathQueryOptionsFilter_Filter "FILTER_VIDEO_AD_POSITION_IN_STREAM"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERAGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERAGE = PathQueryOptionsFilter_Filter "FILTER_AGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGENDER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGENDER = PathQueryOptionsFilter_Filter "FILTER_GENDER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERQUARTER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERQUARTER = PathQueryOptionsFilter_Filter "FILTER_QUARTER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCONVERSIONTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCONVERSIONTYPE = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_CONVERSION_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERMOBILEGEO :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERMOBILEGEO = PathQueryOptionsFilter_Filter "FILTER_MOBILE_GEO"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERMRAIDSUPPORT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERMRAIDSUPPORT = PathQueryOptionsFilter_Filter "FILTER_MRAID_SUPPORT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWEXPECTEDVIEWABILITY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWEXPECTEDVIEWABILITY = PathQueryOptionsFilter_Filter "FILTER_ACTIVE_VIEW_EXPECTED_VIEWABILITY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCREATIVEDURATIONSKIPPABLE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCREATIVEDURATIONSKIPPABLE = PathQueryOptionsFilter_Filter "FILTER_VIDEO_CREATIVE_DURATION_SKIPPABLE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENCOUNTRYCODE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENCOUNTRYCODE = PathQueryOptionsFilter_Filter "FILTER_NIELSEN_COUNTRY_CODE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENDEVICEID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENDEVICEID = PathQueryOptionsFilter_Filter "FILTER_NIELSEN_DEVICE_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENGENDER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENGENDER = PathQueryOptionsFilter_Filter "FILTER_NIELSEN_GENDER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENAGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENAGE = PathQueryOptionsFilter_Filter "FILTER_NIELSEN_AGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCETYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCETYPE = PathQueryOptionsFilter_Filter "FILTER_INVENTORY_SOURCE_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEWIDTH :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEWIDTH = PathQueryOptionsFilter_Filter "FILTER_CREATIVE_WIDTH"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEHEIGHT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEHEIGHT = PathQueryOptionsFilter_Filter "FILTER_CREATIVE_HEIGHT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDFPORDERID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDFPORDERID = PathQueryOptionsFilter_Filter "FILTER_DFP_ORDER_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWAGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWAGE = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_AGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWGENDER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWGENDER = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_GENDER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPARENTALSTATUS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPARENTALSTATUS = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_PARENTAL_STATUS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREMARKETINGLIST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREMARKETINGLIST = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_REMARKETING_LIST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWINTEREST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWINTEREST = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_INTEREST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUPID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUPID = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_AD_GROUP_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUPADID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUPADID = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_AD_GROUP_AD_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARLANGUAGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARLANGUAGE = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_LANGUAGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARGENDER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARGENDER = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_GENDER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARAGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARAGE = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_AGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCATEGORY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCATEGORY = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_CATEGORY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCOUNTRY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCOUNTRY = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_COUNTRY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCITY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCITY = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_CITY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREGION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREGION = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_REGION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARZIPCODE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARZIPCODE = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_ZIPCODE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREMARKETINGLIST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREMARKETINGLIST = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_REMARKETING_LIST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARINTEREST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARINTEREST = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_INTEREST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARPARENTALSTATUS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARPARENTALSTATUS = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_PARENTAL_STATUS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARTIMEOFDAY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARTIMEOFDAY = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_TIME_OF_DAY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCUSTOMAFFINITY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCUSTOMAFFINITY = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_CUSTOM_AFFINITY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCATEGORY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCATEGORY = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_CATEGORY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWKEYWORD :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWKEYWORD = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_KEYWORD"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPLACEMENT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPLACEMENT = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_PLACEMENT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWURL :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWURL = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_URL"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCOUNTRY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCOUNTRY = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_COUNTRY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREGION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREGION = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_REGION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCITY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCITY = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_CITY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDMA :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDMA = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_DMA"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWZIPCODE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWZIPCODE = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_ZIPCODE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERNOTSUPPORTED :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERNOTSUPPORTED = PathQueryOptionsFilter_Filter "FILTER_NOT_SUPPORTED"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERMEDIAPLAN :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERMEDIAPLAN = PathQueryOptionsFilter_Filter "FILTER_MEDIA_PLAN"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARYOUTUBECHANNEL :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARYOUTUBECHANNEL = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_YOUTUBE_CHANNEL"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARYOUTUBEVIDEO :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARYOUTUBEVIDEO = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_YOUTUBE_VIDEO"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERSKIPPABLESUPPORT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERSKIPPABLESUPPORT = PathQueryOptionsFilter_Filter "FILTER_SKIPPABLE_SUPPORT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCOMPANIONCREATIVEID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCOMPANIONCREATIVEID = PathQueryOptionsFilter_Filter "FILTER_COMPANION_CREATIVE_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTDESCRIPTION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTDESCRIPTION = PathQueryOptionsFilter_Filter "FILTER_BUDGET_SEGMENT_DESCRIPTION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERFLOODLIGHTACTIVITYID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERFLOODLIGHTACTIVITYID = PathQueryOptionsFilter_Filter "FILTER_FLOODLIGHT_ACTIVITY_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDEVICEMODEL :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDEVICEMODEL = PathQueryOptionsFilter_Filter "FILTER_DEVICE_MODEL"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDEVICEMAKE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDEVICEMAKE = PathQueryOptionsFilter_Filter "FILTER_DEVICE_MAKE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDEVICETYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDEVICETYPE = PathQueryOptionsFilter_Filter "FILTER_DEVICE_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEATTRIBUTE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEATTRIBUTE = PathQueryOptionsFilter_Filter "FILTER_CREATIVE_ATTRIBUTE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYCOMMITMENTTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYCOMMITMENTTYPE = PathQueryOptionsFilter_Filter "FILTER_INVENTORY_COMMITMENT_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYRATETYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYRATETYPE = PathQueryOptionsFilter_Filter "FILTER_INVENTORY_RATE_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYDELIVERYMETHOD :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYDELIVERYMETHOD = PathQueryOptionsFilter_Filter "FILTER_INVENTORY_DELIVERY_METHOD"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEEXTERNALID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEEXTERNALID = PathQueryOptionsFilter_Filter "FILTER_INVENTORY_SOURCE_EXTERNAL_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERAUTHORIZEDSELLERSTATE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERAUTHORIZEDSELLERSTATE = PathQueryOptionsFilter_Filter "FILTER_AUTHORIZED_SELLER_STATE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEODURATIONSECONDSRANGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEODURATIONSECONDSRANGE = PathQueryOptionsFilter_Filter "FILTER_VIDEO_DURATION_SECONDS_RANGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPARTNERNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPARTNERNAME = PathQueryOptionsFilter_Filter "FILTER_PARTNER_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPARTNERSTATUS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPARTNERSTATUS = PathQueryOptionsFilter_Filter "FILTER_PARTNER_STATUS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISERNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISERNAME = PathQueryOptionsFilter_Filter "FILTER_ADVERTISER_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISERINTEGRATIONCODE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISERINTEGRATIONCODE = PathQueryOptionsFilter_Filter "FILTER_ADVERTISER_INTEGRATION_CODE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISERINTEGRATIONSTATUS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERADVERTISERINTEGRATIONSTATUS = PathQueryOptionsFilter_Filter "FILTER_ADVERTISER_INTEGRATION_STATUS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCARRIERNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCARRIERNAME = PathQueryOptionsFilter_Filter "FILTER_CARRIER_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCHANNELNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCHANNELNAME = PathQueryOptionsFilter_Filter "FILTER_CHANNEL_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCITYNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCITYNAME = PathQueryOptionsFilter_Filter "FILTER_CITY_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCOMPANIONCREATIVENAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCOMPANIONCREATIVENAME = PathQueryOptionsFilter_Filter "FILTER_COMPANION_CREATIVE_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERUSERLISTFIRSTPARTYNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERUSERLISTFIRSTPARTYNAME = PathQueryOptionsFilter_Filter "FILTER_USER_LIST_FIRST_PARTY_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERUSERLISTTHIRDPARTYNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERUSERLISTTHIRDPARTYNAME = PathQueryOptionsFilter_Filter "FILTER_USER_LIST_THIRD_PARTY_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENRESTATEMENTDATE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENRESTATEMENTDATE = PathQueryOptionsFilter_Filter "FILTER_NIELSEN_RESTATEMENT_DATE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENDATERANGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERNIELSENDATERANGE = PathQueryOptionsFilter_Filter "FILTER_NIELSEN_DATE_RANGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERNAME = PathQueryOptionsFilter_Filter "FILTER_INSERTION_ORDER_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERREGIONNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERREGIONNAME = PathQueryOptionsFilter_Filter "FILTER_REGION_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDMANAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDMANAME = PathQueryOptionsFilter_Filter "FILTER_DMA_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREGIONNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREGIONNAME = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_REGION_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDMANAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDMANAME = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_DMA_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREGIONNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREGIONNAME = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_REGION_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWCUSTOMMETRICID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWCUSTOMMETRICID = PathQueryOptionsFilter_Filter "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWCUSTOMMETRICNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWCUSTOMMETRICNAME = PathQueryOptionsFilter_Filter "FILTER_ACTIVE_VIEW_CUSTOM_METRIC_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERADTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERADTYPE = PathQueryOptionsFilter_Filter "FILTER_AD_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERALGORITHM :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERALGORITHM = PathQueryOptionsFilter_Filter "FILTER_ALGORITHM"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERALGORITHMID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERALGORITHMID = PathQueryOptionsFilter_Filter "FILTER_ALGORITHM_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERAMPPAGEREQUEST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERAMPPAGEREQUEST = PathQueryOptionsFilter_Filter "FILTER_AMP_PAGE_REQUEST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERANONYMOUSINVENTORYMODELING :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERANONYMOUSINVENTORYMODELING = PathQueryOptionsFilter_Filter "FILTER_ANONYMOUS_INVENTORY_MODELING"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERAPPURL :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERAPPURL = PathQueryOptionsFilter_Filter "FILTER_APP_URL"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERAPPURLEXCLUDED :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERAPPURLEXCLUDED = PathQueryOptionsFilter_Filter "FILTER_APP_URL_EXCLUDED"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLIST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLIST = PathQueryOptionsFilter_Filter "FILTER_ATTRIBUTED_USERLIST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLISTCOST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLISTCOST = PathQueryOptionsFilter_Filter "FILTER_ATTRIBUTED_USERLIST_COST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLISTTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLISTTYPE = PathQueryOptionsFilter_Filter "FILTER_ATTRIBUTED_USERLIST_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERATTRIBUTIONMODEL :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERATTRIBUTIONMODEL = PathQueryOptionsFilter_Filter "FILTER_ATTRIBUTION_MODEL"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERAUDIENCELIST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERAUDIENCELIST = PathQueryOptionsFilter_Filter "FILTER_AUDIENCE_LIST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERAUDIENCELISTCOST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERAUDIENCELISTCOST = PathQueryOptionsFilter_Filter "FILTER_AUDIENCE_LIST_COST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERAUDIENCELISTTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERAUDIENCELISTTYPE = PathQueryOptionsFilter_Filter "FILTER_AUDIENCE_LIST_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERAUDIENCENAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERAUDIENCENAME = PathQueryOptionsFilter_Filter "FILTER_AUDIENCE_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERAUDIENCETYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERAUDIENCETYPE = PathQueryOptionsFilter_Filter "FILTER_AUDIENCE_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERBILLABLEOUTCOME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERBILLABLEOUTCOME = PathQueryOptionsFilter_Filter "FILTER_BILLABLE_OUTCOME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERBRANDLIFTTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERBRANDLIFTTYPE = PathQueryOptionsFilter_Filter "FILTER_BRAND_LIFT_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCHANNELTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCHANNELTYPE = PathQueryOptionsFilter_Filter "FILTER_CHANNEL_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCMPLACEMENTID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCMPLACEMENTID = PathQueryOptionsFilter_Filter "FILTER_CM_PLACEMENT_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCONVERSIONSOURCE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCONVERSIONSOURCE = PathQueryOptionsFilter_Filter "FILTER_CONVERSION_SOURCE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCONVERSIONSOURCEID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCONVERSIONSOURCEID = PathQueryOptionsFilter_Filter "FILTER_CONVERSION_SOURCE_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCOUNTRYID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCOUNTRYID = PathQueryOptionsFilter_Filter "FILTER_COUNTRY_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVE = PathQueryOptionsFilter_Filter "FILTER_CREATIVE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEASSET :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEASSET = PathQueryOptionsFilter_Filter "FILTER_CREATIVE_ASSET"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEINTEGRATIONCODE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVEINTEGRATIONCODE = PathQueryOptionsFilter_Filter "FILTER_CREATIVE_INTEGRATION_CODE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVERENDEREDINAMP :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVERENDEREDINAMP = PathQueryOptionsFilter_Filter "FILTER_CREATIVE_RENDERED_IN_AMP"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVESOURCE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVESOURCE = PathQueryOptionsFilter_Filter "FILTER_CREATIVE_SOURCE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVESTATUS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCREATIVESTATUS = PathQueryOptionsFilter_Filter "FILTER_CREATIVE_STATUS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDATAPROVIDERNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDATAPROVIDERNAME = PathQueryOptionsFilter_Filter "FILTER_DATA_PROVIDER_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDETAILEDDEMOGRAPHICS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDETAILEDDEMOGRAPHICS = PathQueryOptionsFilter_Filter "FILTER_DETAILED_DEMOGRAPHICS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDETAILEDDEMOGRAPHICSID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDETAILEDDEMOGRAPHICSID = PathQueryOptionsFilter_Filter "FILTER_DETAILED_DEMOGRAPHICS_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDEVICE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDEVICE = PathQueryOptionsFilter_Filter "FILTER_DEVICE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGAMINSERTIONORDER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGAMINSERTIONORDER = PathQueryOptionsFilter_Filter "FILTER_GAM_INSERTION_ORDER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGAMLINEITEM :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGAMLINEITEM = PathQueryOptionsFilter_Filter "FILTER_GAM_LINE_ITEM"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGAMLINEITEMID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGAMLINEITEMID = PathQueryOptionsFilter_Filter "FILTER_GAM_LINE_ITEM_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDIGITALCONTENTLABEL :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDIGITALCONTENTLABEL = PathQueryOptionsFilter_Filter "FILTER_DIGITAL_CONTENT_LABEL"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDOMAIN :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDOMAIN = PathQueryOptionsFilter_Filter "FILTER_DOMAIN"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST = PathQueryOptionsFilter_Filter "FILTER_ELIGIBLE_COOKIES_ON_FIRST_PARTY_AUDIENCE_LIST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST = PathQueryOptionsFilter_Filter "FILTER_ELIGIBLE_COOKIES_ON_THIRD_PARTY_AUDIENCE_LIST_AND_INTEREST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTEREXCHANGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTEREXCHANGE = PathQueryOptionsFilter_Filter "FILTER_EXCHANGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTEREXCHANGECODE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTEREXCHANGECODE = PathQueryOptionsFilter_Filter "FILTER_EXCHANGE_CODE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTEREXTENSION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTEREXTENSION = PathQueryOptionsFilter_Filter "FILTER_EXTENSION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTEREXTENSIONSTATUS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTEREXTENSIONSTATUS = PathQueryOptionsFilter_Filter "FILTER_EXTENSION_STATUS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTEREXTENSIONTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTEREXTENSIONTYPE = PathQueryOptionsFilter_Filter "FILTER_EXTENSION_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERFIRSTPARTYAUDIENCELISTCOST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERFIRSTPARTYAUDIENCELISTCOST = PathQueryOptionsFilter_Filter "FILTER_FIRST_PARTY_AUDIENCE_LIST_COST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERFIRSTPARTYAUDIENCELISTTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERFIRSTPARTYAUDIENCELISTTYPE = PathQueryOptionsFilter_Filter "FILTER_FIRST_PARTY_AUDIENCE_LIST_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERFLOODLIGHTACTIVITY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERFLOODLIGHTACTIVITY = PathQueryOptionsFilter_Filter "FILTER_FLOODLIGHT_ACTIVITY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERFORMAT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERFORMAT = PathQueryOptionsFilter_Filter "FILTER_FORMAT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGMAILAGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGMAILAGE = PathQueryOptionsFilter_Filter "FILTER_GMAIL_AGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGMAILCITY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGMAILCITY = PathQueryOptionsFilter_Filter "FILTER_GMAIL_CITY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGMAILCOUNTRY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGMAILCOUNTRY = PathQueryOptionsFilter_Filter "FILTER_GMAIL_COUNTRY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGMAILCOUNTRYNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGMAILCOUNTRYNAME = PathQueryOptionsFilter_Filter "FILTER_GMAIL_COUNTRY_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGMAILDEVICETYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGMAILDEVICETYPE = PathQueryOptionsFilter_Filter "FILTER_GMAIL_DEVICE_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGMAILDEVICETYPENAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGMAILDEVICETYPENAME = PathQueryOptionsFilter_Filter "FILTER_GMAIL_DEVICE_TYPE_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGMAILGENDER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGMAILGENDER = PathQueryOptionsFilter_Filter "FILTER_GMAIL_GENDER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGMAILREGION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGMAILREGION = PathQueryOptionsFilter_Filter "FILTER_GMAIL_REGION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERGMAILREMARKETINGLIST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERGMAILREMARKETINGLIST = PathQueryOptionsFilter_Filter "FILTER_GMAIL_REMARKETING_LIST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERHOUSEHOLDINCOME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERHOUSEHOLDINCOME = PathQueryOptionsFilter_Filter "FILTER_HOUSEHOLD_INCOME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERIMPRESSIONCOUNTINGMETHOD :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERIMPRESSIONCOUNTINGMETHOD = PathQueryOptionsFilter_Filter "FILTER_IMPRESSION_COUNTING_METHOD"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER = PathQueryOptionsFilter_Filter "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_INSERTION_ORDER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERINTEGRATIONCODE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERINTEGRATIONCODE = PathQueryOptionsFilter_Filter "FILTER_INSERTION_ORDER_INTEGRATION_CODE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERSTATUS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERSTATUS = PathQueryOptionsFilter_Filter "FILTER_INSERTION_ORDER_STATUS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINTEREST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINTEREST = PathQueryOptionsFilter_Filter "FILTER_INTEREST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEGROUP :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEGROUP = PathQueryOptionsFilter_Filter "FILTER_INVENTORY_SOURCE_GROUP"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEGROUPID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEGROUPID = PathQueryOptionsFilter_Filter "FILTER_INVENTORY_SOURCE_GROUP_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEID = PathQueryOptionsFilter_Filter "FILTER_INVENTORY_SOURCE_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCENAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCENAME = PathQueryOptionsFilter_Filter "FILTER_INVENTORY_SOURCE_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLIFEEVENT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLIFEEVENT = PathQueryOptionsFilter_Filter "FILTER_LIFE_EVENT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLIFEEVENTS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLIFEEVENTS = PathQueryOptionsFilter_Filter "FILTER_LIFE_EVENTS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMINTEGRATIONCODE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMINTEGRATIONCODE = PathQueryOptionsFilter_Filter "FILTER_LINE_ITEM_INTEGRATION_CODE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMNAME = PathQueryOptionsFilter_Filter "FILTER_LINE_ITEM_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMSTATUS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMSTATUS = PathQueryOptionsFilter_Filter "FILTER_LINE_ITEM_STATUS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERMATCHRATIO :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERMATCHRATIO = PathQueryOptionsFilter_Filter "FILTER_MATCH_RATIO"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERMEASUREMENTSOURCE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERMEASUREMENTSOURCE = PathQueryOptionsFilter_Filter "FILTER_MEASUREMENT_SOURCE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERMEDIAPLANNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERMEDIAPLANNAME = PathQueryOptionsFilter_Filter "FILTER_MEDIA_PLAN_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPARENTALSTATUS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPARENTALSTATUS = PathQueryOptionsFilter_Filter "FILTER_PARENTAL_STATUS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPLACEMENTALLYOUTUBECHANNELS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPLACEMENTALLYOUTUBECHANNELS = PathQueryOptionsFilter_Filter "FILTER_PLACEMENT_ALL_YOUTUBE_CHANNELS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPLATFORM :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPLATFORM = PathQueryOptionsFilter_Filter "FILTER_PLATFORM"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPLAYBACKMETHOD :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPLAYBACKMETHOD = PathQueryOptionsFilter_Filter "FILTER_PLAYBACK_METHOD"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPOSITIONINCONTENT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPOSITIONINCONTENT = PathQueryOptionsFilter_Filter "FILTER_POSITION_IN_CONTENT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTY = PathQueryOptionsFilter_Filter "FILTER_PUBLISHER_PROPERTY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYID = PathQueryOptionsFilter_Filter "FILTER_PUBLISHER_PROPERTY_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYSECTION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYSECTION = PathQueryOptionsFilter_Filter "FILTER_PUBLISHER_PROPERTY_SECTION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYSECTIONID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYSECTIONID = PathQueryOptionsFilter_Filter "FILTER_PUBLISHER_PROPERTY_SECTION_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERREFUNDREASON :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERREFUNDREASON = PathQueryOptionsFilter_Filter "FILTER_REFUND_REASON"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERREMARKETINGLIST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERREMARKETINGLIST = PathQueryOptionsFilter_Filter "FILTER_REMARKETING_LIST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERREWARDED :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERREWARDED = PathQueryOptionsFilter_Filter "FILTER_REWARDED"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERSENSITIVECATEGORY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERSENSITIVECATEGORY = PathQueryOptionsFilter_Filter "FILTER_SENSITIVE_CATEGORY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERSERVEDPIXELDENSITY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERSERVEDPIXELDENSITY = PathQueryOptionsFilter_Filter "FILTER_SERVED_PIXEL_DENSITY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTARGETEDDATAPROVIDERS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTARGETEDDATAPROVIDERS = PathQueryOptionsFilter_Filter "FILTER_TARGETED_DATA_PROVIDERS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTHIRDPARTYAUDIENCELISTCOST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTHIRDPARTYAUDIENCELISTCOST = PathQueryOptionsFilter_Filter "FILTER_THIRD_PARTY_AUDIENCE_LIST_COST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTHIRDPARTYAUDIENCELISTTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTHIRDPARTYAUDIENCELISTTYPE = PathQueryOptionsFilter_Filter "FILTER_THIRD_PARTY_AUDIENCE_LIST_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWAD :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWAD = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_AD"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUP :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUP = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_AD_GROUP"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_DETAILED_DEMOGRAPHICS_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWHOUSEHOLDINCOME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWHOUSEHOLDINCOME = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_HOUSEHOLD_INCOME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCOUNTRYNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCOUNTRYNAME = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_IAR_COUNTRY_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREMARKETINGLISTNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREMARKETINGLISTNAME = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_REMARKETING_LIST_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVARIANTID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVARIANTID = PathQueryOptionsFilter_Filter "FILTER_VARIANT_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVARIANTNAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVARIANTNAME = PathQueryOptionsFilter_Filter "FILTER_VARIANT_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVARIANTVERSION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVARIANTVERSION = PathQueryOptionsFilter_Filter "FILTER_VARIANT_VERSION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZE = PathQueryOptionsFilter_Filter "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPOSITION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPOSITION = PathQueryOptionsFilter_Filter "FILTER_VERIFICATION_VIDEO_POSITION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCOMPANIONCREATIVESIZE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCOMPANIONCREATIVESIZE = PathQueryOptionsFilter_Filter "FILTER_VIDEO_COMPANION_CREATIVE_SIZE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCONTINUOUSPLAY :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCONTINUOUSPLAY = PathQueryOptionsFilter_Filter "FILTER_VIDEO_CONTINUOUS_PLAY"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEODURATION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEODURATION = PathQueryOptionsFilter_Filter "FILTER_VIDEO_DURATION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEADAPTEDAUDIENCELIST :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEADAPTEDAUDIENCELIST = PathQueryOptionsFilter_Filter "FILTER_YOUTUBE_ADAPTED_AUDIENCE_LIST"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEADVIDEO :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEADVIDEO = PathQueryOptionsFilter_Filter "FILTER_YOUTUBE_AD_VIDEO"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEADVIDEOID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEADVIDEOID = PathQueryOptionsFilter_Filter "FILTER_YOUTUBE_AD_VIDEO_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBECHANNEL :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBECHANNEL = PathQueryOptionsFilter_Filter "FILTER_YOUTUBE_CHANNEL"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER = PathQueryOptionsFilter_Filter "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_ADVERTISER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER = PathQueryOptionsFilter_Filter "FILTER_YOUTUBE_PROGRAMMATIC_GUARANTEED_PARTNER"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEVIDEO :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERYOUTUBEVIDEO = PathQueryOptionsFilter_Filter "FILTER_YOUTUBE_VIDEO"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERZIPPOSTALCODE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERZIPPOSTALCODE = PathQueryOptionsFilter_Filter "FILTER_ZIP_POSTAL_CODE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS = PathQueryOptionsFilter_Filter "FILTER_PLACEMENT_NAME_ALL_YOUTUBE_CHANNELS"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPLACEMENTID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPLACEMENTID = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_PLACEMENT_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPATHPATTERNID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPATHPATTERNID = PathQueryOptionsFilter_Filter "FILTER_PATH_PATTERN_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERPATHEVENTINDEX :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERPATHEVENTINDEX = PathQueryOptionsFilter_Filter "FILTER_PATH_EVENT_INDEX"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTEREVENTTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTEREVENTTYPE = PathQueryOptionsFilter_Filter "FILTER_EVENT_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCHANNELGROUPING :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCHANNELGROUPING = PathQueryOptionsFilter_Filter "FILTER_CHANNEL_GROUPING"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTEROMSDKAVAILABLE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTEROMSDKAVAILABLE = PathQueryOptionsFilter_Filter "FILTER_OM_SDK_AVAILABLE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERDATASOURCE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERDATASOURCE = PathQueryOptionsFilter_Filter "FILTER_DATA_SOURCE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERCM360PLACEMENTID :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERCM360PLACEMENTID = PathQueryOptionsFilter_Filter "FILTER_CM360_PLACEMENT_ID"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCLICKTYPENAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCLICKTYPENAME = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_CLICK_TYPE_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADTYPENAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADTYPENAME = PathQueryOptionsFilter_Filter "FILTER_TRUEVIEW_AD_TYPE_NAME"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCONTENTDURATION :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCONTENTDURATION = PathQueryOptionsFilter_Filter "FILTER_VIDEO_CONTENT_DURATION"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERMATCHEDGENRETARGET :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERMATCHEDGENRETARGET = PathQueryOptionsFilter_Filter "FILTER_MATCHED_GENRE_TARGET"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCONTENTLIVESTREAM :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVIDEOCONTENTLIVESTREAM = PathQueryOptionsFilter_Filter "FILTER_VIDEO_CONTENT_LIVE_STREAM"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTTYPE = PathQueryOptionsFilter_Filter "FILTER_BUDGET_SEGMENT_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTBUDGET :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTBUDGET = PathQueryOptionsFilter_Filter "FILTER_BUDGET_SEGMENT_BUDGET"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTSTARTDATE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTSTARTDATE = PathQueryOptionsFilter_Filter "FILTER_BUDGET_SEGMENT_START_DATE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTENDDATE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTENDDATE = PathQueryOptionsFilter_Filter "FILTER_BUDGET_SEGMENT_END_DATE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTPACINGPERCENTAGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTPACINGPERCENTAGE = PathQueryOptionsFilter_Filter "FILTER_BUDGET_SEGMENT_PACING_PERCENTAGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMBUDGET :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMBUDGET = PathQueryOptionsFilter_Filter "FILTER_LINE_ITEM_BUDGET"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMSTARTDATE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMSTARTDATE = PathQueryOptionsFilter_Filter "FILTER_LINE_ITEM_START_DATE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMENDDATE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMENDDATE = PathQueryOptionsFilter_Filter "FILTER_LINE_ITEM_END_DATE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERGOALTYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERGOALTYPE = PathQueryOptionsFilter_Filter "FILTER_INSERTION_ORDER_GOAL_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMPACINGPERCENTAGE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERLINEITEMPACINGPERCENTAGE = PathQueryOptionsFilter_Filter "FILTER_LINE_ITEM_PACING_PERCENTAGE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERGOALVALUE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERGOALVALUE = PathQueryOptionsFilter_Filter "FILTER_INSERTION_ORDER_GOAL_VALUE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTEROMIDCAPABLE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTEROMIDCAPABLE = PathQueryOptionsFilter_Filter "FILTER_OMID_CAPABLE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVENDORMEASUREMENTMODE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVENDORMEASUREMENTMODE = PathQueryOptionsFilter_Filter "FILTER_VENDOR_MEASUREMENT_MODE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERIMPRESSIONLOSSREJECTIONREASON :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERIMPRESSIONLOSSREJECTIONREASON = PathQueryOptionsFilter_Filter "FILTER_IMPRESSION_LOSS_REJECTION_REASON"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZESTART :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZESTART = PathQueryOptionsFilter_Filter "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_START"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE = PathQueryOptionsFilter_Filter "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_FIRST_QUARTILE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT = PathQueryOptionsFilter_Filter "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_MID_POINT"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE = PathQueryOptionsFilter_Filter "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_THIRD_QUARTILE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE = PathQueryOptionsFilter_Filter "FILTER_VERIFICATION_VIDEO_PLAYER_SIZE_COMPLETE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEORESIZED :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEORESIZED = PathQueryOptionsFilter_Filter "FILTER_VERIFICATION_VIDEO_RESIZED"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONAUDIBILITYSTART :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONAUDIBILITYSTART = PathQueryOptionsFilter_Filter "FILTER_VERIFICATION_AUDIBILITY_START"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONAUDIBILITYCOMPLETE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERVERIFICATIONAUDIBILITYCOMPLETE = PathQueryOptionsFilter_Filter "FILTER_VERIFICATION_AUDIBILITY_COMPLETE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERMEDIATYPE :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERMEDIATYPE = PathQueryOptionsFilter_Filter "FILTER_MEDIA_TYPE"

-- | 
pattern PathQueryOptionsFilter_Filter_FILTERAUDIOFEEDTYPENAME :: PathQueryOptionsFilter_Filter
pattern PathQueryOptionsFilter_Filter_FILTERAUDIOFEEDTYPENAME = PathQueryOptionsFilter_Filter "FILTER_AUDIO_FEED_TYPE_NAME"

{-# COMPLETE
  PathQueryOptionsFilter_Filter_FILTERUNKNOWN,
  PathQueryOptionsFilter_Filter_FILTERDATE,
  PathQueryOptionsFilter_Filter_FILTERDAYOFWEEK,
  PathQueryOptionsFilter_Filter_FILTERWEEK,
  PathQueryOptionsFilter_Filter_FILTERMONTH,
  PathQueryOptionsFilter_Filter_FILTERYEAR,
  PathQueryOptionsFilter_Filter_FILTERTIMEOFDAY,
  PathQueryOptionsFilter_Filter_FILTERCONVERSIONDELAY,
  PathQueryOptionsFilter_Filter_FILTERCREATIVEID,
  PathQueryOptionsFilter_Filter_FILTERCREATIVESIZE,
  PathQueryOptionsFilter_Filter_FILTERCREATIVETYPE,
  PathQueryOptionsFilter_Filter_FILTEREXCHANGEID,
  PathQueryOptionsFilter_Filter_FILTERADPOSITION,
  PathQueryOptionsFilter_Filter_FILTERPUBLICINVENTORY,
  PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCE,
  PathQueryOptionsFilter_Filter_FILTERCITY,
  PathQueryOptionsFilter_Filter_FILTERREGION,
  PathQueryOptionsFilter_Filter_FILTERDMA,
  PathQueryOptionsFilter_Filter_FILTERCOUNTRY,
  PathQueryOptionsFilter_Filter_FILTERSITEID,
  PathQueryOptionsFilter_Filter_FILTERCHANNELID,
  PathQueryOptionsFilter_Filter_FILTERPARTNER,
  PathQueryOptionsFilter_Filter_FILTERADVERTISER,
  PathQueryOptionsFilter_Filter_FILTERINSERTIONORDER,
  PathQueryOptionsFilter_Filter_FILTERLINEITEM,
  PathQueryOptionsFilter_Filter_FILTERPARTNERCURRENCY,
  PathQueryOptionsFilter_Filter_FILTERADVERTISERCURRENCY,
  PathQueryOptionsFilter_Filter_FILTERADVERTISERTIMEZONE,
  PathQueryOptionsFilter_Filter_FILTERLINEITEMTYPE,
  PathQueryOptionsFilter_Filter_FILTERUSERLIST,
  PathQueryOptionsFilter_Filter_FILTERUSERLISTFIRSTPARTY,
  PathQueryOptionsFilter_Filter_FILTERUSERLISTTHIRDPARTY,
  PathQueryOptionsFilter_Filter_FILTERTARGETEDUSERLIST,
  PathQueryOptionsFilter_Filter_FILTERDATAPROVIDER,
  PathQueryOptionsFilter_Filter_FILTERORDERID,
  PathQueryOptionsFilter_Filter_FILTERVIDEOPLAYERSIZE,
  PathQueryOptionsFilter_Filter_FILTERVIDEODURATIONSECONDS,
  PathQueryOptionsFilter_Filter_FILTERKEYWORD,
  PathQueryOptionsFilter_Filter_FILTERPAGECATEGORY,
  PathQueryOptionsFilter_Filter_FILTERCAMPAIGNDAILYFREQUENCY,
  PathQueryOptionsFilter_Filter_FILTERLINEITEMDAILYFREQUENCY,
  PathQueryOptionsFilter_Filter_FILTERLINEITEMLIFETIMEFREQUENCY,
  PathQueryOptionsFilter_Filter_FILTEROS,
  PathQueryOptionsFilter_Filter_FILTERBROWSER,
  PathQueryOptionsFilter_Filter_FILTERCARRIER,
  PathQueryOptionsFilter_Filter_FILTERSITELANGUAGE,
  PathQueryOptionsFilter_Filter_FILTERINVENTORYFORMAT,
  PathQueryOptionsFilter_Filter_FILTERZIPCODE,
  PathQueryOptionsFilter_Filter_FILTERVIDEORATINGTIER,
  PathQueryOptionsFilter_Filter_FILTERVIDEOFORMATSUPPORT,
  PathQueryOptionsFilter_Filter_FILTERVIDEOSKIPPABLESUPPORT,
  PathQueryOptionsFilter_Filter_FILTERVIDEOCREATIVEDURATION,
  PathQueryOptionsFilter_Filter_FILTERPAGELAYOUT,
  PathQueryOptionsFilter_Filter_FILTERVIDEOADPOSITIONINSTREAM,
  PathQueryOptionsFilter_Filter_FILTERAGE,
  PathQueryOptionsFilter_Filter_FILTERGENDER,
  PathQueryOptionsFilter_Filter_FILTERQUARTER,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCONVERSIONTYPE,
  PathQueryOptionsFilter_Filter_FILTERMOBILEGEO,
  PathQueryOptionsFilter_Filter_FILTERMRAIDSUPPORT,
  PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWEXPECTEDVIEWABILITY,
  PathQueryOptionsFilter_Filter_FILTERVIDEOCREATIVEDURATIONSKIPPABLE,
  PathQueryOptionsFilter_Filter_FILTERNIELSENCOUNTRYCODE,
  PathQueryOptionsFilter_Filter_FILTERNIELSENDEVICEID,
  PathQueryOptionsFilter_Filter_FILTERNIELSENGENDER,
  PathQueryOptionsFilter_Filter_FILTERNIELSENAGE,
  PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCETYPE,
  PathQueryOptionsFilter_Filter_FILTERCREATIVEWIDTH,
  PathQueryOptionsFilter_Filter_FILTERCREATIVEHEIGHT,
  PathQueryOptionsFilter_Filter_FILTERDFPORDERID,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWAGE,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWGENDER,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPARENTALSTATUS,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREMARKETINGLIST,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWINTEREST,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUPID,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUPADID,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARLANGUAGE,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARGENDER,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARAGE,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCATEGORY,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCOUNTRY,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCITY,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREGION,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARZIPCODE,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREMARKETINGLIST,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARINTEREST,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARPARENTALSTATUS,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARTIMEOFDAY,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCUSTOMAFFINITY,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCATEGORY,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWKEYWORD,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPLACEMENT,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWURL,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCOUNTRY,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREGION,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCITY,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDMA,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWZIPCODE,
  PathQueryOptionsFilter_Filter_FILTERNOTSUPPORTED,
  PathQueryOptionsFilter_Filter_FILTERMEDIAPLAN,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARYOUTUBECHANNEL,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARYOUTUBEVIDEO,
  PathQueryOptionsFilter_Filter_FILTERSKIPPABLESUPPORT,
  PathQueryOptionsFilter_Filter_FILTERCOMPANIONCREATIVEID,
  PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTDESCRIPTION,
  PathQueryOptionsFilter_Filter_FILTERFLOODLIGHTACTIVITYID,
  PathQueryOptionsFilter_Filter_FILTERDEVICEMODEL,
  PathQueryOptionsFilter_Filter_FILTERDEVICEMAKE,
  PathQueryOptionsFilter_Filter_FILTERDEVICETYPE,
  PathQueryOptionsFilter_Filter_FILTERCREATIVEATTRIBUTE,
  PathQueryOptionsFilter_Filter_FILTERINVENTORYCOMMITMENTTYPE,
  PathQueryOptionsFilter_Filter_FILTERINVENTORYRATETYPE,
  PathQueryOptionsFilter_Filter_FILTERINVENTORYDELIVERYMETHOD,
  PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEEXTERNALID,
  PathQueryOptionsFilter_Filter_FILTERAUTHORIZEDSELLERSTATE,
  PathQueryOptionsFilter_Filter_FILTERVIDEODURATIONSECONDSRANGE,
  PathQueryOptionsFilter_Filter_FILTERPARTNERNAME,
  PathQueryOptionsFilter_Filter_FILTERPARTNERSTATUS,
  PathQueryOptionsFilter_Filter_FILTERADVERTISERNAME,
  PathQueryOptionsFilter_Filter_FILTERADVERTISERINTEGRATIONCODE,
  PathQueryOptionsFilter_Filter_FILTERADVERTISERINTEGRATIONSTATUS,
  PathQueryOptionsFilter_Filter_FILTERCARRIERNAME,
  PathQueryOptionsFilter_Filter_FILTERCHANNELNAME,
  PathQueryOptionsFilter_Filter_FILTERCITYNAME,
  PathQueryOptionsFilter_Filter_FILTERCOMPANIONCREATIVENAME,
  PathQueryOptionsFilter_Filter_FILTERUSERLISTFIRSTPARTYNAME,
  PathQueryOptionsFilter_Filter_FILTERUSERLISTTHIRDPARTYNAME,
  PathQueryOptionsFilter_Filter_FILTERNIELSENRESTATEMENTDATE,
  PathQueryOptionsFilter_Filter_FILTERNIELSENDATERANGE,
  PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERNAME,
  PathQueryOptionsFilter_Filter_FILTERREGIONNAME,
  PathQueryOptionsFilter_Filter_FILTERDMANAME,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARREGIONNAME,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDMANAME,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREGIONNAME,
  PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWCUSTOMMETRICID,
  PathQueryOptionsFilter_Filter_FILTERACTIVEVIEWCUSTOMMETRICNAME,
  PathQueryOptionsFilter_Filter_FILTERADTYPE,
  PathQueryOptionsFilter_Filter_FILTERALGORITHM,
  PathQueryOptionsFilter_Filter_FILTERALGORITHMID,
  PathQueryOptionsFilter_Filter_FILTERAMPPAGEREQUEST,
  PathQueryOptionsFilter_Filter_FILTERANONYMOUSINVENTORYMODELING,
  PathQueryOptionsFilter_Filter_FILTERAPPURL,
  PathQueryOptionsFilter_Filter_FILTERAPPURLEXCLUDED,
  PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLIST,
  PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLISTCOST,
  PathQueryOptionsFilter_Filter_FILTERATTRIBUTEDUSERLISTTYPE,
  PathQueryOptionsFilter_Filter_FILTERATTRIBUTIONMODEL,
  PathQueryOptionsFilter_Filter_FILTERAUDIENCELIST,
  PathQueryOptionsFilter_Filter_FILTERAUDIENCELISTCOST,
  PathQueryOptionsFilter_Filter_FILTERAUDIENCELISTTYPE,
  PathQueryOptionsFilter_Filter_FILTERAUDIENCENAME,
  PathQueryOptionsFilter_Filter_FILTERAUDIENCETYPE,
  PathQueryOptionsFilter_Filter_FILTERBILLABLEOUTCOME,
  PathQueryOptionsFilter_Filter_FILTERBRANDLIFTTYPE,
  PathQueryOptionsFilter_Filter_FILTERCHANNELTYPE,
  PathQueryOptionsFilter_Filter_FILTERCMPLACEMENTID,
  PathQueryOptionsFilter_Filter_FILTERCONVERSIONSOURCE,
  PathQueryOptionsFilter_Filter_FILTERCONVERSIONSOURCEID,
  PathQueryOptionsFilter_Filter_FILTERCOUNTRYID,
  PathQueryOptionsFilter_Filter_FILTERCREATIVE,
  PathQueryOptionsFilter_Filter_FILTERCREATIVEASSET,
  PathQueryOptionsFilter_Filter_FILTERCREATIVEINTEGRATIONCODE,
  PathQueryOptionsFilter_Filter_FILTERCREATIVERENDEREDINAMP,
  PathQueryOptionsFilter_Filter_FILTERCREATIVESOURCE,
  PathQueryOptionsFilter_Filter_FILTERCREATIVESTATUS,
  PathQueryOptionsFilter_Filter_FILTERDATAPROVIDERNAME,
  PathQueryOptionsFilter_Filter_FILTERDETAILEDDEMOGRAPHICS,
  PathQueryOptionsFilter_Filter_FILTERDETAILEDDEMOGRAPHICSID,
  PathQueryOptionsFilter_Filter_FILTERDEVICE,
  PathQueryOptionsFilter_Filter_FILTERGAMINSERTIONORDER,
  PathQueryOptionsFilter_Filter_FILTERGAMLINEITEM,
  PathQueryOptionsFilter_Filter_FILTERGAMLINEITEMID,
  PathQueryOptionsFilter_Filter_FILTERDIGITALCONTENTLABEL,
  PathQueryOptionsFilter_Filter_FILTERDOMAIN,
  PathQueryOptionsFilter_Filter_FILTERELIGIBLECOOKIESONFIRSTPARTYAUDIENCELIST,
  PathQueryOptionsFilter_Filter_FILTERELIGIBLECOOKIESONTHIRDPARTYAUDIENCELISTANDINTEREST,
  PathQueryOptionsFilter_Filter_FILTEREXCHANGE,
  PathQueryOptionsFilter_Filter_FILTEREXCHANGECODE,
  PathQueryOptionsFilter_Filter_FILTEREXTENSION,
  PathQueryOptionsFilter_Filter_FILTEREXTENSIONSTATUS,
  PathQueryOptionsFilter_Filter_FILTEREXTENSIONTYPE,
  PathQueryOptionsFilter_Filter_FILTERFIRSTPARTYAUDIENCELISTCOST,
  PathQueryOptionsFilter_Filter_FILTERFIRSTPARTYAUDIENCELISTTYPE,
  PathQueryOptionsFilter_Filter_FILTERFLOODLIGHTACTIVITY,
  PathQueryOptionsFilter_Filter_FILTERFORMAT,
  PathQueryOptionsFilter_Filter_FILTERGMAILAGE,
  PathQueryOptionsFilter_Filter_FILTERGMAILCITY,
  PathQueryOptionsFilter_Filter_FILTERGMAILCOUNTRY,
  PathQueryOptionsFilter_Filter_FILTERGMAILCOUNTRYNAME,
  PathQueryOptionsFilter_Filter_FILTERGMAILDEVICETYPE,
  PathQueryOptionsFilter_Filter_FILTERGMAILDEVICETYPENAME,
  PathQueryOptionsFilter_Filter_FILTERGMAILGENDER,
  PathQueryOptionsFilter_Filter_FILTERGMAILREGION,
  PathQueryOptionsFilter_Filter_FILTERGMAILREMARKETINGLIST,
  PathQueryOptionsFilter_Filter_FILTERHOUSEHOLDINCOME,
  PathQueryOptionsFilter_Filter_FILTERIMPRESSIONCOUNTINGMETHOD,
  PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDINSERTIONORDER,
  PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERINTEGRATIONCODE,
  PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERSTATUS,
  PathQueryOptionsFilter_Filter_FILTERINTEREST,
  PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEGROUP,
  PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEGROUPID,
  PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCEID,
  PathQueryOptionsFilter_Filter_FILTERINVENTORYSOURCENAME,
  PathQueryOptionsFilter_Filter_FILTERLIFEEVENT,
  PathQueryOptionsFilter_Filter_FILTERLIFEEVENTS,
  PathQueryOptionsFilter_Filter_FILTERLINEITEMINTEGRATIONCODE,
  PathQueryOptionsFilter_Filter_FILTERLINEITEMNAME,
  PathQueryOptionsFilter_Filter_FILTERLINEITEMSTATUS,
  PathQueryOptionsFilter_Filter_FILTERMATCHRATIO,
  PathQueryOptionsFilter_Filter_FILTERMEASUREMENTSOURCE,
  PathQueryOptionsFilter_Filter_FILTERMEDIAPLANNAME,
  PathQueryOptionsFilter_Filter_FILTERPARENTALSTATUS,
  PathQueryOptionsFilter_Filter_FILTERPLACEMENTALLYOUTUBECHANNELS,
  PathQueryOptionsFilter_Filter_FILTERPLATFORM,
  PathQueryOptionsFilter_Filter_FILTERPLAYBACKMETHOD,
  PathQueryOptionsFilter_Filter_FILTERPOSITIONINCONTENT,
  PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTY,
  PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYID,
  PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYSECTION,
  PathQueryOptionsFilter_Filter_FILTERPUBLISHERPROPERTYSECTIONID,
  PathQueryOptionsFilter_Filter_FILTERREFUNDREASON,
  PathQueryOptionsFilter_Filter_FILTERREMARKETINGLIST,
  PathQueryOptionsFilter_Filter_FILTERREWARDED,
  PathQueryOptionsFilter_Filter_FILTERSENSITIVECATEGORY,
  PathQueryOptionsFilter_Filter_FILTERSERVEDPIXELDENSITY,
  PathQueryOptionsFilter_Filter_FILTERTARGETEDDATAPROVIDERS,
  PathQueryOptionsFilter_Filter_FILTERTHIRDPARTYAUDIENCELISTCOST,
  PathQueryOptionsFilter_Filter_FILTERTHIRDPARTYAUDIENCELISTTYPE,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWAD,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADGROUP,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDETAILEDDEMOGRAPHICS,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWDETAILEDDEMOGRAPHICSID,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWHOUSEHOLDINCOME,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWIARCOUNTRYNAME,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWREMARKETINGLISTNAME,
  PathQueryOptionsFilter_Filter_FILTERVARIANTID,
  PathQueryOptionsFilter_Filter_FILTERVARIANTNAME,
  PathQueryOptionsFilter_Filter_FILTERVARIANTVERSION,
  PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZE,
  PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPOSITION,
  PathQueryOptionsFilter_Filter_FILTERVIDEOCOMPANIONCREATIVESIZE,
  PathQueryOptionsFilter_Filter_FILTERVIDEOCONTINUOUSPLAY,
  PathQueryOptionsFilter_Filter_FILTERVIDEODURATION,
  PathQueryOptionsFilter_Filter_FILTERYOUTUBEADAPTEDAUDIENCELIST,
  PathQueryOptionsFilter_Filter_FILTERYOUTUBEADVIDEO,
  PathQueryOptionsFilter_Filter_FILTERYOUTUBEADVIDEOID,
  PathQueryOptionsFilter_Filter_FILTERYOUTUBECHANNEL,
  PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDADVERTISER,
  PathQueryOptionsFilter_Filter_FILTERYOUTUBEPROGRAMMATICGUARANTEEDPARTNER,
  PathQueryOptionsFilter_Filter_FILTERYOUTUBEVIDEO,
  PathQueryOptionsFilter_Filter_FILTERZIPPOSTALCODE,
  PathQueryOptionsFilter_Filter_FILTERPLACEMENTNAMEALLYOUTUBECHANNELS,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWPLACEMENTID,
  PathQueryOptionsFilter_Filter_FILTERPATHPATTERNID,
  PathQueryOptionsFilter_Filter_FILTERPATHEVENTINDEX,
  PathQueryOptionsFilter_Filter_FILTEREVENTTYPE,
  PathQueryOptionsFilter_Filter_FILTERCHANNELGROUPING,
  PathQueryOptionsFilter_Filter_FILTEROMSDKAVAILABLE,
  PathQueryOptionsFilter_Filter_FILTERDATASOURCE,
  PathQueryOptionsFilter_Filter_FILTERCM360PLACEMENTID,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWCLICKTYPENAME,
  PathQueryOptionsFilter_Filter_FILTERTRUEVIEWADTYPENAME,
  PathQueryOptionsFilter_Filter_FILTERVIDEOCONTENTDURATION,
  PathQueryOptionsFilter_Filter_FILTERMATCHEDGENRETARGET,
  PathQueryOptionsFilter_Filter_FILTERVIDEOCONTENTLIVESTREAM,
  PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTTYPE,
  PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTBUDGET,
  PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTSTARTDATE,
  PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTENDDATE,
  PathQueryOptionsFilter_Filter_FILTERBUDGETSEGMENTPACINGPERCENTAGE,
  PathQueryOptionsFilter_Filter_FILTERLINEITEMBUDGET,
  PathQueryOptionsFilter_Filter_FILTERLINEITEMSTARTDATE,
  PathQueryOptionsFilter_Filter_FILTERLINEITEMENDDATE,
  PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERGOALTYPE,
  PathQueryOptionsFilter_Filter_FILTERLINEITEMPACINGPERCENTAGE,
  PathQueryOptionsFilter_Filter_FILTERINSERTIONORDERGOALVALUE,
  PathQueryOptionsFilter_Filter_FILTEROMIDCAPABLE,
  PathQueryOptionsFilter_Filter_FILTERVENDORMEASUREMENTMODE,
  PathQueryOptionsFilter_Filter_FILTERIMPRESSIONLOSSREJECTIONREASON,
  PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZESTART,
  PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZEFIRSTQUARTILE,
  PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZEMIDPOINT,
  PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZETHIRDQUARTILE,
  PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEOPLAYERSIZECOMPLETE,
  PathQueryOptionsFilter_Filter_FILTERVERIFICATIONVIDEORESIZED,
  PathQueryOptionsFilter_Filter_FILTERVERIFICATIONAUDIBILITYSTART,
  PathQueryOptionsFilter_Filter_FILTERVERIFICATIONAUDIBILITYCOMPLETE,
  PathQueryOptionsFilter_Filter_FILTERMEDIATYPE,
  PathQueryOptionsFilter_Filter_FILTERAUDIOFEEDTYPENAME,
  PathQueryOptionsFilter_Filter #-}

-- | Indicates how the filter should be matched to the value.
newtype PathQueryOptionsFilter_Match = PathQueryOptionsFilter_Match { fromPathQueryOptionsFilter_Match :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern PathQueryOptionsFilter_Match_Unknown :: PathQueryOptionsFilter_Match
pattern PathQueryOptionsFilter_Match_Unknown = PathQueryOptionsFilter_Match "UNKNOWN"

-- | 
pattern PathQueryOptionsFilter_Match_Exact :: PathQueryOptionsFilter_Match
pattern PathQueryOptionsFilter_Match_Exact = PathQueryOptionsFilter_Match "EXACT"

-- | 
pattern PathQueryOptionsFilter_Match_Partial :: PathQueryOptionsFilter_Match
pattern PathQueryOptionsFilter_Match_Partial = PathQueryOptionsFilter_Match "PARTIAL"

-- | 
pattern PathQueryOptionsFilter_Match_BEGINSWITH :: PathQueryOptionsFilter_Match
pattern PathQueryOptionsFilter_Match_BEGINSWITH = PathQueryOptionsFilter_Match "BEGINS_WITH"

-- | 
pattern PathQueryOptionsFilter_Match_WILDCARDEXPRESSION :: PathQueryOptionsFilter_Match
pattern PathQueryOptionsFilter_Match_WILDCARDEXPRESSION = PathQueryOptionsFilter_Match "WILDCARD_EXPRESSION"

{-# COMPLETE
  PathQueryOptionsFilter_Match_Unknown,
  PathQueryOptionsFilter_Match_Exact,
  PathQueryOptionsFilter_Match_Partial,
  PathQueryOptionsFilter_Match_BEGINSWITH,
  PathQueryOptionsFilter_Match_WILDCARDEXPRESSION,
  PathQueryOptionsFilter_Match #-}

-- | Range of report data.
newtype QueryMetadata_DataRange = QueryMetadata_DataRange { fromQueryMetadata_DataRange :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern QueryMetadata_DataRange_CUSTOMDATES :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_CUSTOMDATES = QueryMetadata_DataRange "CUSTOM_DATES"

-- | 
pattern QueryMetadata_DataRange_CURRENTDAY :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_CURRENTDAY = QueryMetadata_DataRange "CURRENT_DAY"

-- | 
pattern QueryMetadata_DataRange_PREVIOUSDAY :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_PREVIOUSDAY = QueryMetadata_DataRange "PREVIOUS_DAY"

-- | 
pattern QueryMetadata_DataRange_WEEKTODATE :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_WEEKTODATE = QueryMetadata_DataRange "WEEK_TO_DATE"

-- | 
pattern QueryMetadata_DataRange_MONTHTODATE :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_MONTHTODATE = QueryMetadata_DataRange "MONTH_TO_DATE"

-- | 
pattern QueryMetadata_DataRange_QUARTERTODATE :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_QUARTERTODATE = QueryMetadata_DataRange "QUARTER_TO_DATE"

-- | 
pattern QueryMetadata_DataRange_YEARTODATE :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_YEARTODATE = QueryMetadata_DataRange "YEAR_TO_DATE"

-- | 
pattern QueryMetadata_DataRange_PREVIOUSWEEK :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_PREVIOUSWEEK = QueryMetadata_DataRange "PREVIOUS_WEEK"

-- | 
pattern QueryMetadata_DataRange_PREVIOUSHALFMONTH :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_PREVIOUSHALFMONTH = QueryMetadata_DataRange "PREVIOUS_HALF_MONTH"

-- | 
pattern QueryMetadata_DataRange_PREVIOUSMONTH :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_PREVIOUSMONTH = QueryMetadata_DataRange "PREVIOUS_MONTH"

-- | 
pattern QueryMetadata_DataRange_PREVIOUSQUARTER :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_PREVIOUSQUARTER = QueryMetadata_DataRange "PREVIOUS_QUARTER"

-- | 
pattern QueryMetadata_DataRange_PREVIOUSYEAR :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_PREVIOUSYEAR = QueryMetadata_DataRange "PREVIOUS_YEAR"

-- | 
pattern QueryMetadata_DataRange_LAST7DAYS :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_LAST7DAYS = QueryMetadata_DataRange "LAST_7_DAYS"

-- | 
pattern QueryMetadata_DataRange_LAST30DAYS :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_LAST30DAYS = QueryMetadata_DataRange "LAST_30_DAYS"

-- | 
pattern QueryMetadata_DataRange_LAST90DAYS :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_LAST90DAYS = QueryMetadata_DataRange "LAST_90_DAYS"

-- | 
pattern QueryMetadata_DataRange_LAST365DAYS :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_LAST365DAYS = QueryMetadata_DataRange "LAST_365_DAYS"

-- | 
pattern QueryMetadata_DataRange_ALLTIME :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_ALLTIME = QueryMetadata_DataRange "ALL_TIME"

-- | 
pattern QueryMetadata_DataRange_LAST14DAYS :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_LAST14DAYS = QueryMetadata_DataRange "LAST_14_DAYS"

-- | 
pattern QueryMetadata_DataRange_TYPENOTSUPPORTED :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_TYPENOTSUPPORTED = QueryMetadata_DataRange "TYPE_NOT_SUPPORTED"

-- | 
pattern QueryMetadata_DataRange_LAST60DAYS :: QueryMetadata_DataRange
pattern QueryMetadata_DataRange_LAST60DAYS = QueryMetadata_DataRange "LAST_60_DAYS"

{-# COMPLETE
  QueryMetadata_DataRange_CUSTOMDATES,
  QueryMetadata_DataRange_CURRENTDAY,
  QueryMetadata_DataRange_PREVIOUSDAY,
  QueryMetadata_DataRange_WEEKTODATE,
  QueryMetadata_DataRange_MONTHTODATE,
  QueryMetadata_DataRange_QUARTERTODATE,
  QueryMetadata_DataRange_YEARTODATE,
  QueryMetadata_DataRange_PREVIOUSWEEK,
  QueryMetadata_DataRange_PREVIOUSHALFMONTH,
  QueryMetadata_DataRange_PREVIOUSMONTH,
  QueryMetadata_DataRange_PREVIOUSQUARTER,
  QueryMetadata_DataRange_PREVIOUSYEAR,
  QueryMetadata_DataRange_LAST7DAYS,
  QueryMetadata_DataRange_LAST30DAYS,
  QueryMetadata_DataRange_LAST90DAYS,
  QueryMetadata_DataRange_LAST365DAYS,
  QueryMetadata_DataRange_ALLTIME,
  QueryMetadata_DataRange_LAST14DAYS,
  QueryMetadata_DataRange_TYPENOTSUPPORTED,
  QueryMetadata_DataRange_LAST60DAYS,
  QueryMetadata_DataRange #-}

-- | Format of the generated report.
newtype QueryMetadata_Format = QueryMetadata_Format { fromQueryMetadata_Format :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern QueryMetadata_Format_Csv :: QueryMetadata_Format
pattern QueryMetadata_Format_Csv = QueryMetadata_Format "CSV"

-- | 
pattern QueryMetadata_Format_EXCELCSV :: QueryMetadata_Format
pattern QueryMetadata_Format_EXCELCSV = QueryMetadata_Format "EXCEL_CSV"

-- | 
pattern QueryMetadata_Format_Xlsx :: QueryMetadata_Format
pattern QueryMetadata_Format_Xlsx = QueryMetadata_Format "XLSX"

{-# COMPLETE
  QueryMetadata_Format_Csv,
  QueryMetadata_Format_EXCELCSV,
  QueryMetadata_Format_Xlsx,
  QueryMetadata_Format #-}

-- | How often the query is run.
newtype QuerySchedule_Frequency = QuerySchedule_Frequency { fromQuerySchedule_Frequency :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern QuerySchedule_Frequency_ONETIME :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_ONETIME = QuerySchedule_Frequency "ONE_TIME"

-- | 
pattern QuerySchedule_Frequency_Daily :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_Daily = QuerySchedule_Frequency "DAILY"

-- | 
pattern QuerySchedule_Frequency_Weekly :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_Weekly = QuerySchedule_Frequency "WEEKLY"

-- | 
pattern QuerySchedule_Frequency_SEMIMONTHLY :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_SEMIMONTHLY = QuerySchedule_Frequency "SEMI_MONTHLY"

-- | 
pattern QuerySchedule_Frequency_Monthly :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_Monthly = QuerySchedule_Frequency "MONTHLY"

-- | 
pattern QuerySchedule_Frequency_Quarterly :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_Quarterly = QuerySchedule_Frequency "QUARTERLY"

-- | 
pattern QuerySchedule_Frequency_Yearly :: QuerySchedule_Frequency
pattern QuerySchedule_Frequency_Yearly = QuerySchedule_Frequency "YEARLY"

{-# COMPLETE
  QuerySchedule_Frequency_ONETIME,
  QuerySchedule_Frequency_Daily,
  QuerySchedule_Frequency_Weekly,
  QuerySchedule_Frequency_SEMIMONTHLY,
  QuerySchedule_Frequency_Monthly,
  QuerySchedule_Frequency_Quarterly,
  QuerySchedule_Frequency_Yearly,
  QuerySchedule_Frequency #-}

-- | Error code that shows why the report was not created.
newtype ReportFailure_ErrorCode = ReportFailure_ErrorCode { fromReportFailure_ErrorCode :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ReportFailure_ErrorCode_AUTHENTICATIONERROR :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_AUTHENTICATIONERROR = ReportFailure_ErrorCode "AUTHENTICATION_ERROR"

-- | 
pattern ReportFailure_ErrorCode_UNAUTHORIZEDAPIACCESS :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_UNAUTHORIZEDAPIACCESS = ReportFailure_ErrorCode "UNAUTHORIZED_API_ACCESS"

-- | 
pattern ReportFailure_ErrorCode_SERVERERROR :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_SERVERERROR = ReportFailure_ErrorCode "SERVER_ERROR"

-- | 
pattern ReportFailure_ErrorCode_VALIDATIONERROR :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_VALIDATIONERROR = ReportFailure_ErrorCode "VALIDATION_ERROR"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGFATALERROR :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGFATALERROR = ReportFailure_ErrorCode "REPORTING_FATAL_ERROR"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGTRANSIENTERROR :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGTRANSIENTERROR = ReportFailure_ErrorCode "REPORTING_TRANSIENT_ERROR"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGIMCOMPATIBLEMETRICS :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGIMCOMPATIBLEMETRICS = ReportFailure_ErrorCode "REPORTING_IMCOMPATIBLE_METRICS"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGILLEGALFILENAME :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGILLEGALFILENAME = ReportFailure_ErrorCode "REPORTING_ILLEGAL_FILENAME"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGQUERYNOTFOUND :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGQUERYNOTFOUND = ReportFailure_ErrorCode "REPORTING_QUERY_NOT_FOUND"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGBUCKETNOTFOUND :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGBUCKETNOTFOUND = ReportFailure_ErrorCode "REPORTING_BUCKET_NOT_FOUND"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGCREATEBUCKETFAILED :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGCREATEBUCKETFAILED = ReportFailure_ErrorCode "REPORTING_CREATE_BUCKET_FAILED"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGDELETEBUCKETFAILED :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGDELETEBUCKETFAILED = ReportFailure_ErrorCode "REPORTING_DELETE_BUCKET_FAILED"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGUPDATEBUCKETPERMISSIONFAILED :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGUPDATEBUCKETPERMISSIONFAILED = ReportFailure_ErrorCode "REPORTING_UPDATE_BUCKET_PERMISSION_FAILED"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGWRITEBUCKETOBJECTFAILED :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGWRITEBUCKETOBJECTFAILED = ReportFailure_ErrorCode "REPORTING_WRITE_BUCKET_OBJECT_FAILED"

-- | 
pattern ReportFailure_ErrorCode_DEPRECATEDREPORTINGINVALIDQUERY :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_DEPRECATEDREPORTINGINVALIDQUERY = ReportFailure_ErrorCode "DEPRECATED_REPORTING_INVALID_QUERY"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGINVALIDQUERYTOOMANYUNFILTEREDLARGEGROUPBYS :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGINVALIDQUERYTOOMANYUNFILTEREDLARGEGROUPBYS = ReportFailure_ErrorCode "REPORTING_INVALID_QUERY_TOO_MANY_UNFILTERED_LARGE_GROUP_BYS"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGINVALIDQUERYTITLEMISSING :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGINVALIDQUERYTITLEMISSING = ReportFailure_ErrorCode "REPORTING_INVALID_QUERY_TITLE_MISSING"

-- | 
pattern ReportFailure_ErrorCode_REPORTINGINVALIDQUERYMISSINGPARTNERANDADVERTISERFILTERS :: ReportFailure_ErrorCode
pattern ReportFailure_ErrorCode_REPORTINGINVALIDQUERYMISSINGPARTNERANDADVERTISERFILTERS = ReportFailure_ErrorCode "REPORTING_INVALID_QUERY_MISSING_PARTNER_AND_ADVERTISER_FILTERS"

{-# COMPLETE
  ReportFailure_ErrorCode_AUTHENTICATIONERROR,
  ReportFailure_ErrorCode_UNAUTHORIZEDAPIACCESS,
  ReportFailure_ErrorCode_SERVERERROR,
  ReportFailure_ErrorCode_VALIDATIONERROR,
  ReportFailure_ErrorCode_REPORTINGFATALERROR,
  ReportFailure_ErrorCode_REPORTINGTRANSIENTERROR,
  ReportFailure_ErrorCode_REPORTINGIMCOMPATIBLEMETRICS,
  ReportFailure_ErrorCode_REPORTINGILLEGALFILENAME,
  ReportFailure_ErrorCode_REPORTINGQUERYNOTFOUND,
  ReportFailure_ErrorCode_REPORTINGBUCKETNOTFOUND,
  ReportFailure_ErrorCode_REPORTINGCREATEBUCKETFAILED,
  ReportFailure_ErrorCode_REPORTINGDELETEBUCKETFAILED,
  ReportFailure_ErrorCode_REPORTINGUPDATEBUCKETPERMISSIONFAILED,
  ReportFailure_ErrorCode_REPORTINGWRITEBUCKETOBJECTFAILED,
  ReportFailure_ErrorCode_DEPRECATEDREPORTINGINVALIDQUERY,
  ReportFailure_ErrorCode_REPORTINGINVALIDQUERYTOOMANYUNFILTEREDLARGEGROUPBYS,
  ReportFailure_ErrorCode_REPORTINGINVALIDQUERYTITLEMISSING,
  ReportFailure_ErrorCode_REPORTINGINVALIDQUERYMISSINGPARTNERANDADVERTISERFILTERS,
  ReportFailure_ErrorCode #-}

-- | The file type of the report.
newtype ReportStatus_Format = ReportStatus_Format { fromReportStatus_Format :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ReportStatus_Format_Csv :: ReportStatus_Format
pattern ReportStatus_Format_Csv = ReportStatus_Format "CSV"

-- | 
pattern ReportStatus_Format_EXCELCSV :: ReportStatus_Format
pattern ReportStatus_Format_EXCELCSV = ReportStatus_Format "EXCEL_CSV"

-- | 
pattern ReportStatus_Format_Xlsx :: ReportStatus_Format
pattern ReportStatus_Format_Xlsx = ReportStatus_Format "XLSX"

{-# COMPLETE
  ReportStatus_Format_Csv,
  ReportStatus_Format_EXCELCSV,
  ReportStatus_Format_Xlsx,
  ReportStatus_Format #-}

-- | The state of the report.
newtype ReportStatus_State = ReportStatus_State { fromReportStatus_State :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern ReportStatus_State_Running :: ReportStatus_State
pattern ReportStatus_State_Running = ReportStatus_State "RUNNING"

-- | 
pattern ReportStatus_State_Done :: ReportStatus_State
pattern ReportStatus_State_Done = ReportStatus_State "DONE"

-- | 
pattern ReportStatus_State_Failed :: ReportStatus_State
pattern ReportStatus_State_Failed = ReportStatus_State "FAILED"

{-# COMPLETE
  ReportStatus_State_Running,
  ReportStatus_State_Done,
  ReportStatus_State_Failed,
  ReportStatus_State #-}

-- | Report data range used to generate the report.
newtype RunQueryRequest_DataRange = RunQueryRequest_DataRange { fromRunQueryRequest_DataRange :: Core.Text }
    deriving stock (Core.Show, Core.Read, Core.Eq, Core.Ord, Core.Generic)
    deriving newtype
      ( Core.Hashable
      , Core.ToHttpApiData
      , Core.FromHttpApiData
      , Core.ToJSON
      , Core.ToJSONKey
      , Core.FromJSON
      , Core.FromJSONKey
      )

-- | 
pattern RunQueryRequest_DataRange_CUSTOMDATES :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_CUSTOMDATES = RunQueryRequest_DataRange "CUSTOM_DATES"

-- | 
pattern RunQueryRequest_DataRange_CURRENTDAY :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_CURRENTDAY = RunQueryRequest_DataRange "CURRENT_DAY"

-- | 
pattern RunQueryRequest_DataRange_PREVIOUSDAY :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_PREVIOUSDAY = RunQueryRequest_DataRange "PREVIOUS_DAY"

-- | 
pattern RunQueryRequest_DataRange_WEEKTODATE :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_WEEKTODATE = RunQueryRequest_DataRange "WEEK_TO_DATE"

-- | 
pattern RunQueryRequest_DataRange_MONTHTODATE :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_MONTHTODATE = RunQueryRequest_DataRange "MONTH_TO_DATE"

-- | 
pattern RunQueryRequest_DataRange_QUARTERTODATE :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_QUARTERTODATE = RunQueryRequest_DataRange "QUARTER_TO_DATE"

-- | 
pattern RunQueryRequest_DataRange_YEARTODATE :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_YEARTODATE = RunQueryRequest_DataRange "YEAR_TO_DATE"

-- | 
pattern RunQueryRequest_DataRange_PREVIOUSWEEK :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_PREVIOUSWEEK = RunQueryRequest_DataRange "PREVIOUS_WEEK"

-- | 
pattern RunQueryRequest_DataRange_PREVIOUSHALFMONTH :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_PREVIOUSHALFMONTH = RunQueryRequest_DataRange "PREVIOUS_HALF_MONTH"

-- | 
pattern RunQueryRequest_DataRange_PREVIOUSMONTH :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_PREVIOUSMONTH = RunQueryRequest_DataRange "PREVIOUS_MONTH"

-- | 
pattern RunQueryRequest_DataRange_PREVIOUSQUARTER :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_PREVIOUSQUARTER = RunQueryRequest_DataRange "PREVIOUS_QUARTER"

-- | 
pattern RunQueryRequest_DataRange_PREVIOUSYEAR :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_PREVIOUSYEAR = RunQueryRequest_DataRange "PREVIOUS_YEAR"

-- | 
pattern RunQueryRequest_DataRange_LAST7DAYS :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_LAST7DAYS = RunQueryRequest_DataRange "LAST_7_DAYS"

-- | 
pattern RunQueryRequest_DataRange_LAST30DAYS :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_LAST30DAYS = RunQueryRequest_DataRange "LAST_30_DAYS"

-- | 
pattern RunQueryRequest_DataRange_LAST90DAYS :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_LAST90DAYS = RunQueryRequest_DataRange "LAST_90_DAYS"

-- | 
pattern RunQueryRequest_DataRange_LAST365DAYS :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_LAST365DAYS = RunQueryRequest_DataRange "LAST_365_DAYS"

-- | 
pattern RunQueryRequest_DataRange_ALLTIME :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_ALLTIME = RunQueryRequest_DataRange "ALL_TIME"

-- | 
pattern RunQueryRequest_DataRange_LAST14DAYS :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_LAST14DAYS = RunQueryRequest_DataRange "LAST_14_DAYS"

-- | 
pattern RunQueryRequest_DataRange_TYPENOTSUPPORTED :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_TYPENOTSUPPORTED = RunQueryRequest_DataRange "TYPE_NOT_SUPPORTED"

-- | 
pattern RunQueryRequest_DataRange_LAST60DAYS :: RunQueryRequest_DataRange
pattern RunQueryRequest_DataRange_LAST60DAYS = RunQueryRequest_DataRange "LAST_60_DAYS"

{-# COMPLETE
  RunQueryRequest_DataRange_CUSTOMDATES,
  RunQueryRequest_DataRange_CURRENTDAY,
  RunQueryRequest_DataRange_PREVIOUSDAY,
  RunQueryRequest_DataRange_WEEKTODATE,
  RunQueryRequest_DataRange_MONTHTODATE,
  RunQueryRequest_DataRange_QUARTERTODATE,
  RunQueryRequest_DataRange_YEARTODATE,
  RunQueryRequest_DataRange_PREVIOUSWEEK,
  RunQueryRequest_DataRange_PREVIOUSHALFMONTH,
  RunQueryRequest_DataRange_PREVIOUSMONTH,
  RunQueryRequest_DataRange_PREVIOUSQUARTER,
  RunQueryRequest_DataRange_PREVIOUSYEAR,
  RunQueryRequest_DataRange_LAST7DAYS,
  RunQueryRequest_DataRange_LAST30DAYS,
  RunQueryRequest_DataRange_LAST90DAYS,
  RunQueryRequest_DataRange_LAST365DAYS,
  RunQueryRequest_DataRange_ALLTIME,
  RunQueryRequest_DataRange_LAST14DAYS,
  RunQueryRequest_DataRange_TYPENOTSUPPORTED,
  RunQueryRequest_DataRange_LAST60DAYS,
  RunQueryRequest_DataRange #-}
