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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileUserLinks.Update
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates permissions for an existing user on the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileUserLinks.update@.
module Network.Google.Resource.Analytics.Management.ProFileUserLinks.Update
    (
    -- * REST Resource
      ManagementProFileUserLinksUpdateResource

    -- * Creating a Request
    , managementProFileUserLinksUpdate'
    , ManagementProFileUserLinksUpdate'

    -- * Request Lenses
    , mpfuluWebPropertyId
    , mpfuluProFileId
    , mpfuluPayload
    , mpfuluAccountId
    , mpfuluLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.profileUserLinks.update@ method which the
-- 'ManagementProFileUserLinksUpdate'' request conforms to.
type ManagementProFileUserLinksUpdateResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "entityUserLinks" :>
                     Capture "linkId" Text :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] EntityUserLink :>
                           Put '[JSON] EntityUserLink

-- | Updates permissions for an existing user on the given view (profile).
--
-- /See:/ 'managementProFileUserLinksUpdate'' smart constructor.
data ManagementProFileUserLinksUpdate' = ManagementProFileUserLinksUpdate'
    { _mpfuluWebPropertyId :: !Text
    , _mpfuluProFileId     :: !Text
    , _mpfuluPayload       :: !EntityUserLink
    , _mpfuluAccountId     :: !Text
    , _mpfuluLinkId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileUserLinksUpdate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfuluWebPropertyId'
--
-- * 'mpfuluProFileId'
--
-- * 'mpfuluPayload'
--
-- * 'mpfuluAccountId'
--
-- * 'mpfuluLinkId'
managementProFileUserLinksUpdate'
    :: Text -- ^ 'mpfuluWebPropertyId'
    -> Text -- ^ 'mpfuluProFileId'
    -> EntityUserLink -- ^ 'mpfuluPayload'
    -> Text -- ^ 'mpfuluAccountId'
    -> Text -- ^ 'mpfuluLinkId'
    -> ManagementProFileUserLinksUpdate'
managementProFileUserLinksUpdate' pMpfuluWebPropertyId_ pMpfuluProFileId_ pMpfuluPayload_ pMpfuluAccountId_ pMpfuluLinkId_ =
    ManagementProFileUserLinksUpdate'
    { _mpfuluWebPropertyId = pMpfuluWebPropertyId_
    , _mpfuluProFileId = pMpfuluProFileId_
    , _mpfuluPayload = pMpfuluPayload_
    , _mpfuluAccountId = pMpfuluAccountId_
    , _mpfuluLinkId = pMpfuluLinkId_
    }

-- | Web Property ID to update the user link for.
mpfuluWebPropertyId :: Lens' ManagementProFileUserLinksUpdate' Text
mpfuluWebPropertyId
  = lens _mpfuluWebPropertyId
      (\ s a -> s{_mpfuluWebPropertyId = a})

-- | View (Profile ID) to update the user link for.
mpfuluProFileId :: Lens' ManagementProFileUserLinksUpdate' Text
mpfuluProFileId
  = lens _mpfuluProFileId
      (\ s a -> s{_mpfuluProFileId = a})

-- | Multipart request metadata.
mpfuluPayload :: Lens' ManagementProFileUserLinksUpdate' EntityUserLink
mpfuluPayload
  = lens _mpfuluPayload
      (\ s a -> s{_mpfuluPayload = a})

-- | Account ID to update the user link for.
mpfuluAccountId :: Lens' ManagementProFileUserLinksUpdate' Text
mpfuluAccountId
  = lens _mpfuluAccountId
      (\ s a -> s{_mpfuluAccountId = a})

-- | Link ID to update the user link for.
mpfuluLinkId :: Lens' ManagementProFileUserLinksUpdate' Text
mpfuluLinkId
  = lens _mpfuluLinkId (\ s a -> s{_mpfuluLinkId = a})

instance GoogleRequest
         ManagementProFileUserLinksUpdate' where
        type Rs ManagementProFileUserLinksUpdate' =
             EntityUserLink
        requestClient ManagementProFileUserLinksUpdate'{..}
          = go _mpfuluAccountId _mpfuluWebPropertyId
              _mpfuluProFileId
              _mpfuluLinkId
              (Just AltJSON)
              _mpfuluPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementProFileUserLinksUpdateResource)
                      mempty
