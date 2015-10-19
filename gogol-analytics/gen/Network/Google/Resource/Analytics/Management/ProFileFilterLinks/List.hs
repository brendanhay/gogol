{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}
{-# OPTIONS_GHC -fno-warn-unused-binds      #-}
{-# OPTIONS_GHC -fno-warn-unused-imports    #-}

-- |
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists all profile filter links for a profile.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileFilterLinksList@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.List
    (
    -- * REST Resource
      ManagementProFileFilterLinksListResource

    -- * Creating a Request
    , managementProFileFilterLinksList'
    , ManagementProFileFilterLinksList'

    -- * Request Lenses
    , mpffllWebPropertyId
    , mpffllProFileId
    , mpffllAccountId
    , mpffllStartIndex
    , mpffllMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileFilterLinksList@ method which the
-- 'ManagementProFileFilterLinksList'' request conforms to.
type ManagementProFileFilterLinksListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "profileFilterLinks" :>
                     QueryParam "start-index" Int32 :>
                       QueryParam "max-results" Int32 :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] ProFileFilterLinks

-- | Lists all profile filter links for a profile.
--
-- /See:/ 'managementProFileFilterLinksList'' smart constructor.
data ManagementProFileFilterLinksList' = ManagementProFileFilterLinksList'
    { _mpffllWebPropertyId :: !Text
    , _mpffllProFileId     :: !Text
    , _mpffllAccountId     :: !Text
    , _mpffllStartIndex    :: !(Maybe Int32)
    , _mpffllMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileFilterLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpffllWebPropertyId'
--
-- * 'mpffllProFileId'
--
-- * 'mpffllAccountId'
--
-- * 'mpffllStartIndex'
--
-- * 'mpffllMaxResults'
managementProFileFilterLinksList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProFileFilterLinksList'
managementProFileFilterLinksList' pMpffllWebPropertyId_ pMpffllProFileId_ pMpffllAccountId_ =
    ManagementProFileFilterLinksList'
    { _mpffllWebPropertyId = pMpffllWebPropertyId_
    , _mpffllProFileId = pMpffllProFileId_
    , _mpffllAccountId = pMpffllAccountId_
    , _mpffllStartIndex = Nothing
    , _mpffllMaxResults = Nothing
    }

-- | Web property Id for profile filter links for. Can either be a specific
-- web property ID or \'~all\', which refers to all the web properties that
-- user has access to.
mpffllWebPropertyId :: Lens' ManagementProFileFilterLinksList' Text
mpffllWebPropertyId
  = lens _mpffllWebPropertyId
      (\ s a -> s{_mpffllWebPropertyId = a})

-- | Profile ID to retrieve filter links for. Can either be a specific
-- profile ID or \'~all\', which refers to all the profiles that user has
-- access to.
mpffllProFileId :: Lens' ManagementProFileFilterLinksList' Text
mpffllProFileId
  = lens _mpffllProFileId
      (\ s a -> s{_mpffllProFileId = a})

-- | Account ID to retrieve profile filter links for.
mpffllAccountId :: Lens' ManagementProFileFilterLinksList' Text
mpffllAccountId
  = lens _mpffllAccountId
      (\ s a -> s{_mpffllAccountId = a})

-- | An index of the first entity to retrieve. Use this parameter as a
-- pagination mechanism along with the max-results parameter.
mpffllStartIndex :: Lens' ManagementProFileFilterLinksList' (Maybe Int32)
mpffllStartIndex
  = lens _mpffllStartIndex
      (\ s a -> s{_mpffllStartIndex = a})

-- | The maximum number of profile filter links to include in this response.
mpffllMaxResults :: Lens' ManagementProFileFilterLinksList' (Maybe Int32)
mpffllMaxResults
  = lens _mpffllMaxResults
      (\ s a -> s{_mpffllMaxResults = a})

instance GoogleRequest
         ManagementProFileFilterLinksList' where
        type Rs ManagementProFileFilterLinksList' =
             ProFileFilterLinks
        requestClient ManagementProFileFilterLinksList'{..}
          = go _mpffllAccountId _mpffllWebPropertyId
              _mpffllProFileId
              _mpffllStartIndex
              _mpffllMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksListResource)
                      mempty
