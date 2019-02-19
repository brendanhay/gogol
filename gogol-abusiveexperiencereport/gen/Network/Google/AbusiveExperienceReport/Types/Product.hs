{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AbusiveExperienceReport.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AbusiveExperienceReport.Types.Product where

import           Network.Google.AbusiveExperienceReport.Types.Sum
import           Network.Google.Prelude

-- | Response message for GetSiteSummary.
--
-- /See:/ 'siteSummaryResponse' smart constructor.
data SiteSummaryResponse =
  SiteSummaryResponse'
    { _ssrAbusiveStatus   :: !(Maybe SiteSummaryResponseAbusiveStatus)
    , _ssrEnforcementTime :: !(Maybe DateTime')
    , _ssrLastChangeTime  :: !(Maybe DateTime')
    , _ssrFilterStatus    :: !(Maybe SiteSummaryResponseFilterStatus)
    , _ssrUnderReview     :: !(Maybe Bool)
    , _ssrReportURL       :: !(Maybe Text)
    , _ssrReviewedSite    :: !(Maybe Text)
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

-- | The status of the site reviewed for the abusive experiences.
ssrAbusiveStatus :: Lens' SiteSummaryResponse (Maybe SiteSummaryResponseAbusiveStatus)
ssrAbusiveStatus
  = lens _ssrAbusiveStatus
      (\ s a -> s{_ssrAbusiveStatus = a})

-- | The date on which enforcement begins.
ssrEnforcementTime :: Lens' SiteSummaryResponse (Maybe UTCTime)
ssrEnforcementTime
  = lens _ssrEnforcementTime
      (\ s a -> s{_ssrEnforcementTime = a})
      . mapping _DateTime

-- | The last time that the site changed status.
ssrLastChangeTime :: Lens' SiteSummaryResponse (Maybe UTCTime)
ssrLastChangeTime
  = lens _ssrLastChangeTime
      (\ s a -> s{_ssrLastChangeTime = a})
      . mapping _DateTime

-- | The abusive experience enforcement status of the site.
ssrFilterStatus :: Lens' SiteSummaryResponse (Maybe SiteSummaryResponseFilterStatus)
ssrFilterStatus
  = lens _ssrFilterStatus
      (\ s a -> s{_ssrFilterStatus = a})

-- | Whether the site is currently under review.
ssrUnderReview :: Lens' SiteSummaryResponse (Maybe Bool)
ssrUnderReview
  = lens _ssrUnderReview
      (\ s a -> s{_ssrUnderReview = a})

-- | A link that leads to a full abusive experience report.
ssrReportURL :: Lens' SiteSummaryResponse (Maybe Text)
ssrReportURL
  = lens _ssrReportURL (\ s a -> s{_ssrReportURL = a})

-- | The name of the site reviewed.
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

-- | A list of summaries of violating sites.
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
