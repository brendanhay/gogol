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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates permissions for an existing user on the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webpropertyUserLinks.update@.
module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Update
    (
    -- * REST Resource
      ManagementWebPropertyUserLinksUpdateResource

    -- * Creating a Request
    , managementWebPropertyUserLinksUpdate
    , ManagementWebPropertyUserLinksUpdate

    -- * Request Lenses
    , mwpuluWebPropertyId
    , mwpuluPayload
    , mwpuluAccountId
    , mwpuluLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.webpropertyUserLinks.update@ method which the
-- 'ManagementWebPropertyUserLinksUpdate' request conforms to.
type ManagementWebPropertyUserLinksUpdateResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "entityUserLinks" :>
                     Capture "linkId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] EntityUserLink :>
                           Put '[JSON] EntityUserLink

-- | Updates permissions for an existing user on the given web property.
--
-- /See:/ 'managementWebPropertyUserLinksUpdate' smart constructor.
data ManagementWebPropertyUserLinksUpdate = ManagementWebPropertyUserLinksUpdate
    { _mwpuluWebPropertyId :: !Text
    , _mwpuluPayload       :: !EntityUserLink
    , _mwpuluAccountId     :: !Text
    , _mwpuluLinkId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyUserLinksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpuluWebPropertyId'
--
-- * 'mwpuluPayload'
--
-- * 'mwpuluAccountId'
--
-- * 'mwpuluLinkId'
managementWebPropertyUserLinksUpdate
    :: Text -- ^ 'mwpuluWebPropertyId'
    -> EntityUserLink -- ^ 'mwpuluPayload'
    -> Text -- ^ 'mwpuluAccountId'
    -> Text -- ^ 'mwpuluLinkId'
    -> ManagementWebPropertyUserLinksUpdate
managementWebPropertyUserLinksUpdate pMwpuluWebPropertyId_ pMwpuluPayload_ pMwpuluAccountId_ pMwpuluLinkId_ =
    ManagementWebPropertyUserLinksUpdate
    { _mwpuluWebPropertyId = pMwpuluWebPropertyId_
    , _mwpuluPayload = pMwpuluPayload_
    , _mwpuluAccountId = pMwpuluAccountId_
    , _mwpuluLinkId = pMwpuluLinkId_
    }

-- | Web property ID to update the account-user link for.
mwpuluWebPropertyId :: Lens' ManagementWebPropertyUserLinksUpdate Text
mwpuluWebPropertyId
  = lens _mwpuluWebPropertyId
      (\ s a -> s{_mwpuluWebPropertyId = a})

-- | Multipart request metadata.
mwpuluPayload :: Lens' ManagementWebPropertyUserLinksUpdate EntityUserLink
mwpuluPayload
  = lens _mwpuluPayload
      (\ s a -> s{_mwpuluPayload = a})

-- | Account ID to update the account-user link for.
mwpuluAccountId :: Lens' ManagementWebPropertyUserLinksUpdate Text
mwpuluAccountId
  = lens _mwpuluAccountId
      (\ s a -> s{_mwpuluAccountId = a})

-- | Link ID to update the account-user link for.
mwpuluLinkId :: Lens' ManagementWebPropertyUserLinksUpdate Text
mwpuluLinkId
  = lens _mwpuluLinkId (\ s a -> s{_mwpuluLinkId = a})

instance GoogleRequest
         ManagementWebPropertyUserLinksUpdate where
        type Rs ManagementWebPropertyUserLinksUpdate =
             EntityUserLink
        requestClient
          ManagementWebPropertyUserLinksUpdate{..}
          = go _mwpuluAccountId _mwpuluWebPropertyId
              _mwpuluLinkId
              (Just AltJSON)
              _mwpuluPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementWebPropertyUserLinksUpdateResource)
                      mempty
