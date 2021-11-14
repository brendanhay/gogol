{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AbusiveExperienceReport.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AbusiveExperienceReport.Types.Product where

import Network.Google.AbusiveExperienceReport.Types.Sum
import Network.Google.Prelude

-- | Response message for GetSiteSummary.
--
-- /See:/ 'siteSummaryResponse' smart constructor.
data SiteSummaryResponse =
  SiteSummaryResponse'
    { _ssrAbusiveStatus :: !(Maybe SiteSummaryResponseAbusiveStatus)
    , _ssrEnforcementTime :: !(Maybe DateTime')
    , _ssrLastChangeTime :: !(Maybe DateTime')
    , _ssrFilterStatus :: !(Maybe SiteSummaryResponseFilterStatus)
    , _ssrUnderReview :: !(Maybe Bool)
    , _ssrReportURL :: !(Maybe Text)
    , _ssrReviewedSite :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SiteSummaryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrAbusiveStatus'
--
-- * 'ssrEnforcementTime'
--
-- * 'ssrLastChangeTime'
--
-- * 'ssrFilterStatus'
--
-- * 'ssrUnderReview'
--
-- * 'ssrReportURL'
--
-- * 'ssrReviewedSite'
siteSummaryResponse
    :: SiteSummaryResponse
siteSummaryResponse =
  SiteSummaryResponse'
    { _ssrAbusiveStatus = Nothing
    , _ssrEnforcementTime = Nothing
    , _ssrLastChangeTime = Nothing
    , _ssrFilterStatus = Nothing
    , _ssrUnderReview = Nothing
    , _ssrReportURL = Nothing
    , _ssrReviewedSite = Nothing
    }


-- | The site\'s Abusive Experience Report status.
ssrAbusiveStatus :: Lens' SiteSummaryResponse (Maybe SiteSummaryResponseAbusiveStatus)
ssrAbusiveStatus
  = lens _ssrAbusiveStatus
      (\ s a -> s{_ssrAbusiveStatus = a})

-- | The time at which
-- [enforcement](https:\/\/support.google.com\/webtools\/answer\/7538608)
-- against the site began or will begin. Not set when the filter_status is
-- OFF.
ssrEnforcementTime :: Lens' SiteSummaryResponse (Maybe UTCTime)
ssrEnforcementTime
  = lens _ssrEnforcementTime
      (\ s a -> s{_ssrEnforcementTime = a})
      . mapping _DateTime

-- | The time at which the site\'s status last changed.
ssrLastChangeTime :: Lens' SiteSummaryResponse (Maybe UTCTime)
ssrLastChangeTime
  = lens _ssrLastChangeTime
      (\ s a -> s{_ssrLastChangeTime = a})
      . mapping _DateTime

-- | The site\'s [enforcement
-- status](https:\/\/support.google.com\/webtools\/answer\/7538608).
ssrFilterStatus :: Lens' SiteSummaryResponse (Maybe SiteSummaryResponseFilterStatus)
ssrFilterStatus
  = lens _ssrFilterStatus
      (\ s a -> s{_ssrFilterStatus = a})

-- | Whether the site is currently under review.
ssrUnderReview :: Lens' SiteSummaryResponse (Maybe Bool)
ssrUnderReview
  = lens _ssrUnderReview
      (\ s a -> s{_ssrUnderReview = a})

-- | A link to the full Abusive Experience Report for the site. Not set in
-- ViolatingSitesResponse. Note that you must complete the [Search Console
-- verification
-- process](https:\/\/support.google.com\/webmasters\/answer\/9008080) for
-- the site before you can access the full report.
ssrReportURL :: Lens' SiteSummaryResponse (Maybe Text)
ssrReportURL
  = lens _ssrReportURL (\ s a -> s{_ssrReportURL = a})

-- | The name of the reviewed site, e.g. \`google.com\`.
ssrReviewedSite :: Lens' SiteSummaryResponse (Maybe Text)
ssrReviewedSite
  = lens _ssrReviewedSite
      (\ s a -> s{_ssrReviewedSite = a})

instance FromJSON SiteSummaryResponse where
        parseJSON
          = withObject "SiteSummaryResponse"
              (\ o ->
                 SiteSummaryResponse' <$>
                   (o .:? "abusiveStatus") <*> (o .:? "enforcementTime")
                     <*> (o .:? "lastChangeTime")
                     <*> (o .:? "filterStatus")
                     <*> (o .:? "underReview")
                     <*> (o .:? "reportUrl")
                     <*> (o .:? "reviewedSite"))

instance ToJSON SiteSummaryResponse where
        toJSON SiteSummaryResponse'{..}
          = object
              (catMaybes
                 [("abusiveStatus" .=) <$> _ssrAbusiveStatus,
                  ("enforcementTime" .=) <$> _ssrEnforcementTime,
                  ("lastChangeTime" .=) <$> _ssrLastChangeTime,
                  ("filterStatus" .=) <$> _ssrFilterStatus,
                  ("underReview" .=) <$> _ssrUnderReview,
                  ("reportUrl" .=) <$> _ssrReportURL,
                  ("reviewedSite" .=) <$> _ssrReviewedSite])

-- | Response message for ListViolatingSites.
--
-- /See:/ 'violatingSitesResponse' smart constructor.
newtype ViolatingSitesResponse =
  ViolatingSitesResponse'
    { _vsrViolatingSites :: Maybe [SiteSummaryResponse]
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ViolatingSitesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'vsrViolatingSites'
violatingSitesResponse
    :: ViolatingSitesResponse
violatingSitesResponse = ViolatingSitesResponse' {_vsrViolatingSites = Nothing}


-- | The list of violating sites.
vsrViolatingSites :: Lens' ViolatingSitesResponse [SiteSummaryResponse]
vsrViolatingSites
  = lens _vsrViolatingSites
      (\ s a -> s{_vsrViolatingSites = a})
      . _Default
      . _Coerce

instance FromJSON ViolatingSitesResponse where
        parseJSON
          = withObject "ViolatingSitesResponse"
              (\ o ->
                 ViolatingSitesResponse' <$>
                   (o .:? "violatingSites" .!= mempty))

instance ToJSON ViolatingSitesResponse where
        toJSON ViolatingSitesResponse'{..}
          = object
              (catMaybes
                 [("violatingSites" .=) <$> _vsrViolatingSites])
