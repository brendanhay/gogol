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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileUserLinks.Insert
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new user to the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileUserLinks.insert@.
module Network.Google.Resource.Analytics.Management.ProFileUserLinks.Insert
    (
    -- * REST Resource
      ManagementProFileUserLinksInsertResource

    -- * Creating a Request
    , managementProFileUserLinksInsert
    , ManagementProFileUserLinksInsert

    -- * Request Lenses
    , mpfuliWebPropertyId
    , mpfuliProFileId
    , mpfuliPayload
    , mpfuliAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.profileUserLinks.insert@ method which the
-- 'ManagementProFileUserLinksInsert' request conforms to.
type ManagementProFileUserLinksInsertResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "profiles" :>
                     Capture "profileId" Text :>
                       "entityUserLinks" :>
                         QueryParam "alt" AltJSON :>
                           ReqBody '[JSON] EntityUserLink :>
                             Post '[JSON] EntityUserLink

-- | Adds a new user to the given view (profile).
--
-- /See:/ 'managementProFileUserLinksInsert' smart constructor.
data ManagementProFileUserLinksInsert = ManagementProFileUserLinksInsert'
    { _mpfuliWebPropertyId :: !Text
    , _mpfuliProFileId     :: !Text
    , _mpfuliPayload       :: !EntityUserLink
    , _mpfuliAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileUserLinksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfuliWebPropertyId'
--
-- * 'mpfuliProFileId'
--
-- * 'mpfuliPayload'
--
-- * 'mpfuliAccountId'
managementProFileUserLinksInsert
    :: Text -- ^ 'mpfuliWebPropertyId'
    -> Text -- ^ 'mpfuliProFileId'
    -> EntityUserLink -- ^ 'mpfuliPayload'
    -> Text -- ^ 'mpfuliAccountId'
    -> ManagementProFileUserLinksInsert
managementProFileUserLinksInsert pMpfuliWebPropertyId_ pMpfuliProFileId_ pMpfuliPayload_ pMpfuliAccountId_ =
    ManagementProFileUserLinksInsert'
    { _mpfuliWebPropertyId = pMpfuliWebPropertyId_
    , _mpfuliProFileId = pMpfuliProFileId_
    , _mpfuliPayload = pMpfuliPayload_
    , _mpfuliAccountId = pMpfuliAccountId_
    }

-- | Web Property ID to create the user link for.
mpfuliWebPropertyId :: Lens' ManagementProFileUserLinksInsert Text
mpfuliWebPropertyId
  = lens _mpfuliWebPropertyId
      (\ s a -> s{_mpfuliWebPropertyId = a})

-- | View (Profile) ID to create the user link for.
mpfuliProFileId :: Lens' ManagementProFileUserLinksInsert Text
mpfuliProFileId
  = lens _mpfuliProFileId
      (\ s a -> s{_mpfuliProFileId = a})

-- | Multipart request metadata.
mpfuliPayload :: Lens' ManagementProFileUserLinksInsert EntityUserLink
mpfuliPayload
  = lens _mpfuliPayload
      (\ s a -> s{_mpfuliPayload = a})

-- | Account ID to create the user link for.
mpfuliAccountId :: Lens' ManagementProFileUserLinksInsert Text
mpfuliAccountId
  = lens _mpfuliAccountId
      (\ s a -> s{_mpfuliAccountId = a})

instance GoogleRequest
         ManagementProFileUserLinksInsert where
        type Rs ManagementProFileUserLinksInsert =
             EntityUserLink
        type Scopes ManagementProFileUserLinksInsert =
             '["https://www.googleapis.com/auth/analytics.manage.users"]
        requestClient ManagementProFileUserLinksInsert'{..}
          = go _mpfuliAccountId _mpfuliWebPropertyId
              _mpfuliProFileId
              (Just AltJSON)
              _mpfuliPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementProFileUserLinksInsertResource)
                      mempty
