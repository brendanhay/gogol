{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.AdExperienceReport.Types.Product
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.AdExperienceReport.Types.Product where

import Network.Google.AdExperienceReport.Types.Sum
import Network.Google.Prelude

-- | Response message for GetSiteSummary.
--
-- /See:/ 'siteSummaryResponse' smart constructor.
data SiteSummaryResponse =
  SiteSummaryResponse'
    { _ssrMobileSummary :: !(Maybe PlatformSummary)
    , _ssrReviewedSite :: !(Maybe Text)
    , _ssrDesktopSummary :: !(Maybe PlatformSummary)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'SiteSummaryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ssrMobileSummary'
--
-- * 'ssrReviewedSite'
--
-- * 'ssrDesktopSummary'
siteSummaryResponse
    :: SiteSummaryResponse
siteSummaryResponse =
  SiteSummaryResponse'
    { _ssrMobileSummary = Nothing
    , _ssrReviewedSite = Nothing
    , _ssrDesktopSummary = Nothing
    }


-- | The site\'s Ad Experience Report summary on mobile.
ssrMobileSummary :: Lens' SiteSummaryResponse (Maybe PlatformSummary)
ssrMobileSummary
  = lens _ssrMobileSummary
      (\ s a -> s{_ssrMobileSummary = a})

-- | The name of the reviewed site, e.g. \`google.com\`.
ssrReviewedSite :: Lens' SiteSummaryResponse (Maybe Text)
ssrReviewedSite
  = lens _ssrReviewedSite
      (\ s a -> s{_ssrReviewedSite = a})

-- | The site\'s Ad Experience Report summary on desktop.
ssrDesktopSummary :: Lens' SiteSummaryResponse (Maybe PlatformSummary)
ssrDesktopSummary
  = lens _ssrDesktopSummary
      (\ s a -> s{_ssrDesktopSummary = a})

instance FromJSON SiteSummaryResponse where
        parseJSON
          = withObject "SiteSummaryResponse"
              (\ o ->
                 SiteSummaryResponse' <$>
                   (o .:? "mobileSummary") <*> (o .:? "reviewedSite")
                     <*> (o .:? "desktopSummary"))

instance ToJSON SiteSummaryResponse where
        toJSON SiteSummaryResponse'{..}
          = object
              (catMaybes
                 [("mobileSummary" .=) <$> _ssrMobileSummary,
                  ("reviewedSite" .=) <$> _ssrReviewedSite,
                  ("desktopSummary" .=) <$> _ssrDesktopSummary])

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

-- | A site\'s Ad Experience Report summary on a single platform.
--
-- /See:/ 'platformSummary' smart constructor.
data PlatformSummary =
  PlatformSummary'
    { _psEnforcementTime :: !(Maybe DateTime')
    , _psLastChangeTime :: !(Maybe DateTime')
    , _psFilterStatus :: !(Maybe PlatformSummaryFilterStatus)
    , _psUnderReview :: !(Maybe Bool)
    , _psBetterAdsStatus :: !(Maybe PlatformSummaryBetterAdsStatus)
    , _psReportURL :: !(Maybe Text)
    , _psRegion :: !(Maybe [PlatformSummaryRegionItem])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'PlatformSummary' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'psEnforcementTime'
--
-- * 'psLastChangeTime'
--
-- * 'psFilterStatus'
--
-- * 'psUnderReview'
--
-- * 'psBetterAdsStatus'
--
-- * 'psReportURL'
--
-- * 'psRegion'
platformSummary
    :: PlatformSummary
platformSummary =
  PlatformSummary'
    { _psEnforcementTime = Nothing
    , _psLastChangeTime = Nothing
    , _psFilterStatus = Nothing
    , _psUnderReview = Nothing
    , _psBetterAdsStatus = Nothing
    , _psReportURL = Nothing
    , _psRegion = Nothing
    }


-- | The time at which
-- [enforcement](https:\/\/support.google.com\/webtools\/answer\/7308033)
-- against the site began or will begin on this platform. Not set when the
-- filter_status is OFF.
psEnforcementTime :: Lens' PlatformSummary (Maybe UTCTime)
psEnforcementTime
  = lens _psEnforcementTime
      (\ s a -> s{_psEnforcementTime = a})
      . mapping _DateTime

-- | The time at which the site\'s status last changed on this platform.
psLastChangeTime :: Lens' PlatformSummary (Maybe UTCTime)
psLastChangeTime
  = lens _psLastChangeTime
      (\ s a -> s{_psLastChangeTime = a})
      . mapping _DateTime

-- | The site\'s [enforcement
-- status](https:\/\/support.google.com\/webtools\/answer\/7308033) on this
-- platform.
psFilterStatus :: Lens' PlatformSummary (Maybe PlatformSummaryFilterStatus)
psFilterStatus
  = lens _psFilterStatus
      (\ s a -> s{_psFilterStatus = a})

-- | Whether the site is currently under review on this platform.
psUnderReview :: Lens' PlatformSummary (Maybe Bool)
psUnderReview
  = lens _psUnderReview
      (\ s a -> s{_psUnderReview = a})

-- | The site\'s Ad Experience Report status on this platform.
psBetterAdsStatus :: Lens' PlatformSummary (Maybe PlatformSummaryBetterAdsStatus)
psBetterAdsStatus
  = lens _psBetterAdsStatus
      (\ s a -> s{_psBetterAdsStatus = a})

-- | A link to the full Ad Experience Report for the site on this platform..
-- Not set in ViolatingSitesResponse. Note that you must complete the
-- [Search Console verification
-- process](https:\/\/support.google.com\/webmasters\/answer\/9008080) for
-- the site before you can access the full report.
psReportURL :: Lens' PlatformSummary (Maybe Text)
psReportURL
  = lens _psReportURL (\ s a -> s{_psReportURL = a})

-- | The site\'s regions on this platform. No longer populated, because there
-- is no longer any semantic difference between sites in different regions.
psRegion :: Lens' PlatformSummary [PlatformSummaryRegionItem]
psRegion
  = lens _psRegion (\ s a -> s{_psRegion = a}) .
      _Default
      . _Coerce

instance FromJSON PlatformSummary where
        parseJSON
          = withObject "PlatformSummary"
              (\ o ->
                 PlatformSummary' <$>
                   (o .:? "enforcementTime") <*>
                     (o .:? "lastChangeTime")
                     <*> (o .:? "filterStatus")
                     <*> (o .:? "underReview")
                     <*> (o .:? "betterAdsStatus")
                     <*> (o .:? "reportUrl")
                     <*> (o .:? "region" .!= mempty))

instance ToJSON PlatformSummary where
        toJSON PlatformSummary'{..}
          = object
              (catMaybes
                 [("enforcementTime" .=) <$> _psEnforcementTime,
                  ("lastChangeTime" .=) <$> _psLastChangeTime,
                  ("filterStatus" .=) <$> _psFilterStatus,
                  ("underReview" .=) <$> _psUnderReview,
                  ("betterAdsStatus" .=) <$> _psBetterAdsStatus,
                  ("reportUrl" .=) <$> _psReportURL,
                  ("region" .=) <$> _psRegion])
