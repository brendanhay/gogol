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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Update
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an existing profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.update@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Update
    (
    -- * REST Resource
      ManagementProFileFilterLinksUpdateResource

    -- * Creating a Request
    , managementProFileFilterLinksUpdate
    , ManagementProFileFilterLinksUpdate

    -- * Request Lenses
    , mpffluWebPropertyId
    , mpffluProFileId
    , mpffluPayload
    , mpffluAccountId
    , mpffluLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.profileFilterLinks.update@ method which the
-- 'ManagementProFileFilterLinksUpdate' request conforms to.
type ManagementProFileFilterLinksUpdateResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "profiles" :>
                     Capture "profileId" Text :>
                       "profileFilterLinks" :>
                         Capture "linkId" Text :>
                           QueryParam "alt" AltJSON :>
                             ReqBody '[JSON] ProFileFilterLink :>
                               Put '[JSON] ProFileFilterLink

-- | Update an existing profile filter link.
--
-- /See:/ 'managementProFileFilterLinksUpdate' smart constructor.
data ManagementProFileFilterLinksUpdate =
  ManagementProFileFilterLinksUpdate'
    { _mpffluWebPropertyId :: !Text
    , _mpffluProFileId     :: !Text
    , _mpffluPayload       :: !ProFileFilterLink
    , _mpffluAccountId     :: !Text
    , _mpffluLinkId        :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementProFileFilterLinksUpdate' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpffluWebPropertyId'
--
-- * 'mpffluProFileId'
--
-- * 'mpffluPayload'
--
-- * 'mpffluAccountId'
--
-- * 'mpffluLinkId'
managementProFileFilterLinksUpdate
    :: Text -- ^ 'mpffluWebPropertyId'
    -> Text -- ^ 'mpffluProFileId'
    -> ProFileFilterLink -- ^ 'mpffluPayload'
    -> Text -- ^ 'mpffluAccountId'
    -> Text -- ^ 'mpffluLinkId'
    -> ManagementProFileFilterLinksUpdate
managementProFileFilterLinksUpdate pMpffluWebPropertyId_ pMpffluProFileId_ pMpffluPayload_ pMpffluAccountId_ pMpffluLinkId_ =
  ManagementProFileFilterLinksUpdate'
    { _mpffluWebPropertyId = pMpffluWebPropertyId_
    , _mpffluProFileId = pMpffluProFileId_
    , _mpffluPayload = pMpffluPayload_
    , _mpffluAccountId = pMpffluAccountId_
    , _mpffluLinkId = pMpffluLinkId_
    }


-- | Web property Id to which profile filter link belongs
mpffluWebPropertyId :: Lens' ManagementProFileFilterLinksUpdate Text
mpffluWebPropertyId
  = lens _mpffluWebPropertyId
      (\ s a -> s{_mpffluWebPropertyId = a})

-- | Profile ID to which filter link belongs
mpffluProFileId :: Lens' ManagementProFileFilterLinksUpdate Text
mpffluProFileId
  = lens _mpffluProFileId
      (\ s a -> s{_mpffluProFileId = a})

-- | Multipart request metadata.
mpffluPayload :: Lens' ManagementProFileFilterLinksUpdate ProFileFilterLink
mpffluPayload
  = lens _mpffluPayload
      (\ s a -> s{_mpffluPayload = a})

-- | Account ID to which profile filter link belongs.
mpffluAccountId :: Lens' ManagementProFileFilterLinksUpdate Text
mpffluAccountId
  = lens _mpffluAccountId
      (\ s a -> s{_mpffluAccountId = a})

-- | ID of the profile filter link to be updated.
mpffluLinkId :: Lens' ManagementProFileFilterLinksUpdate Text
mpffluLinkId
  = lens _mpffluLinkId (\ s a -> s{_mpffluLinkId = a})

instance GoogleRequest
           ManagementProFileFilterLinksUpdate
         where
        type Rs ManagementProFileFilterLinksUpdate =
             ProFileFilterLink
        type Scopes ManagementProFileFilterLinksUpdate =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementProFileFilterLinksUpdate'{..}
          = go _mpffluAccountId _mpffluWebPropertyId
              _mpffluProFileId
              _mpffluLinkId
              (Just AltJSON)
              _mpffluPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksUpdateResource)
                      mempty
