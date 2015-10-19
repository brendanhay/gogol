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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileUserLinks.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists profile-user links for a given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileUserLinksList@.
module Network.Google.Resource.Analytics.Management.ProFileUserLinks.List
    (
    -- * REST Resource
      ManagementProFileUserLinksListResource

    -- * Creating a Request
    , managementProFileUserLinksList'
    , ManagementProFileUserLinksList'

    -- * Request Lenses
    , mpfullWebPropertyId
    , mpfullProFileId
    , mpfullAccountId
    , mpfullStartIndex
    , mpfullMaxResults
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileUserLinksList@ method which the
-- 'ManagementProFileUserLinksList'' request conforms to.
type ManagementProFileUserLinksListResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "entityUserLinks" :>
                     QueryParam "start-index" Int32 :>
                       QueryParam "max-results" Int32 :>
                         QueryParam "alt" AltJSON :>
                           Get '[JSON] EntityUserLinks

-- | Lists profile-user links for a given view (profile).
--
-- /See:/ 'managementProFileUserLinksList'' smart constructor.
data ManagementProFileUserLinksList' = ManagementProFileUserLinksList'
    { _mpfullWebPropertyId :: !Text
    , _mpfullProFileId     :: !Text
    , _mpfullAccountId     :: !Text
    , _mpfullStartIndex    :: !(Maybe Int32)
    , _mpfullMaxResults    :: !(Maybe Int32)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileUserLinksList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfullWebPropertyId'
--
-- * 'mpfullProFileId'
--
-- * 'mpfullAccountId'
--
-- * 'mpfullStartIndex'
--
-- * 'mpfullMaxResults'
managementProFileUserLinksList'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> Text -- ^ 'accountId'
    -> ManagementProFileUserLinksList'
managementProFileUserLinksList' pMpfullWebPropertyId_ pMpfullProFileId_ pMpfullAccountId_ =
    ManagementProFileUserLinksList'
    { _mpfullWebPropertyId = pMpfullWebPropertyId_
    , _mpfullProFileId = pMpfullProFileId_
    , _mpfullAccountId = pMpfullAccountId_
    , _mpfullStartIndex = Nothing
    , _mpfullMaxResults = Nothing
    }

-- | Web Property ID which the given view (profile) belongs to. Can either be
-- a specific web property ID or \'~all\', which refers to all the web
-- properties that user has access to.
mpfullWebPropertyId :: Lens' ManagementProFileUserLinksList' Text
mpfullWebPropertyId
  = lens _mpfullWebPropertyId
      (\ s a -> s{_mpfullWebPropertyId = a})

-- | View (Profile) ID to retrieve the profile-user links for. Can either be
-- a specific profile ID or \'~all\', which refers to all the profiles that
-- user has access to.
mpfullProFileId :: Lens' ManagementProFileUserLinksList' Text
mpfullProFileId
  = lens _mpfullProFileId
      (\ s a -> s{_mpfullProFileId = a})

-- | Account ID which the given view (profile) belongs to.
mpfullAccountId :: Lens' ManagementProFileUserLinksList' Text
mpfullAccountId
  = lens _mpfullAccountId
      (\ s a -> s{_mpfullAccountId = a})

-- | An index of the first profile-user link to retrieve. Use this parameter
-- as a pagination mechanism along with the max-results parameter.
mpfullStartIndex :: Lens' ManagementProFileUserLinksList' (Maybe Int32)
mpfullStartIndex
  = lens _mpfullStartIndex
      (\ s a -> s{_mpfullStartIndex = a})

-- | The maximum number of profile-user links to include in this response.
mpfullMaxResults :: Lens' ManagementProFileUserLinksList' (Maybe Int32)
mpfullMaxResults
  = lens _mpfullMaxResults
      (\ s a -> s{_mpfullMaxResults = a})

instance GoogleRequest
         ManagementProFileUserLinksList' where
        type Rs ManagementProFileUserLinksList' =
             EntityUserLinks
        requestClient ManagementProFileUserLinksList'{..}
          = go _mpfullAccountId _mpfullWebPropertyId
              _mpfullProFileId
              _mpfullStartIndex
              _mpfullMaxResults
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementProFileUserLinksListResource)
                      mempty
