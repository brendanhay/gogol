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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Patch
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Update an existing profile filter link. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.patch@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Patch
    (
    -- * REST Resource
      ManagementProFileFilterLinksPatchResource

    -- * Creating a Request
    , managementProFileFilterLinksPatch
    , ManagementProFileFilterLinksPatch

    -- * Request Lenses
    , mpfflpWebPropertyId
    , mpfflpProFileId
    , mpfflpPayload
    , mpfflpAccountId
    , mpfflpLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.profileFilterLinks.patch@ method which the
-- 'ManagementProFileFilterLinksPatch' request conforms to.
type ManagementProFileFilterLinksPatchResource =
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
                               Patch '[JSON] ProFileFilterLink

-- | Update an existing profile filter link. This method supports patch
-- semantics.
--
-- /See:/ 'managementProFileFilterLinksPatch' smart constructor.
data ManagementProFileFilterLinksPatch = ManagementProFileFilterLinksPatch
    { _mpfflpWebPropertyId :: !Text
    , _mpfflpProFileId     :: !Text
    , _mpfflpPayload       :: !ProFileFilterLink
    , _mpfflpAccountId     :: !Text
    , _mpfflpLinkId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileFilterLinksPatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfflpWebPropertyId'
--
-- * 'mpfflpProFileId'
--
-- * 'mpfflpPayload'
--
-- * 'mpfflpAccountId'
--
-- * 'mpfflpLinkId'
managementProFileFilterLinksPatch
    :: Text -- ^ 'mpfflpWebPropertyId'
    -> Text -- ^ 'mpfflpProFileId'
    -> ProFileFilterLink -- ^ 'mpfflpPayload'
    -> Text -- ^ 'mpfflpAccountId'
    -> Text -- ^ 'mpfflpLinkId'
    -> ManagementProFileFilterLinksPatch
managementProFileFilterLinksPatch pMpfflpWebPropertyId_ pMpfflpProFileId_ pMpfflpPayload_ pMpfflpAccountId_ pMpfflpLinkId_ =
    ManagementProFileFilterLinksPatch
    { _mpfflpWebPropertyId = pMpfflpWebPropertyId_
    , _mpfflpProFileId = pMpfflpProFileId_
    , _mpfflpPayload = pMpfflpPayload_
    , _mpfflpAccountId = pMpfflpAccountId_
    , _mpfflpLinkId = pMpfflpLinkId_
    }

-- | Web property Id to which profile filter link belongs
mpfflpWebPropertyId :: Lens' ManagementProFileFilterLinksPatch Text
mpfflpWebPropertyId
  = lens _mpfflpWebPropertyId
      (\ s a -> s{_mpfflpWebPropertyId = a})

-- | Profile ID to which filter link belongs
mpfflpProFileId :: Lens' ManagementProFileFilterLinksPatch Text
mpfflpProFileId
  = lens _mpfflpProFileId
      (\ s a -> s{_mpfflpProFileId = a})

-- | Multipart request metadata.
mpfflpPayload :: Lens' ManagementProFileFilterLinksPatch ProFileFilterLink
mpfflpPayload
  = lens _mpfflpPayload
      (\ s a -> s{_mpfflpPayload = a})

-- | Account ID to which profile filter link belongs.
mpfflpAccountId :: Lens' ManagementProFileFilterLinksPatch Text
mpfflpAccountId
  = lens _mpfflpAccountId
      (\ s a -> s{_mpfflpAccountId = a})

-- | ID of the profile filter link to be updated.
mpfflpLinkId :: Lens' ManagementProFileFilterLinksPatch Text
mpfflpLinkId
  = lens _mpfflpLinkId (\ s a -> s{_mpfflpLinkId = a})

instance GoogleRequest
         ManagementProFileFilterLinksPatch where
        type Rs ManagementProFileFilterLinksPatch =
             ProFileFilterLink
        type Scopes ManagementProFileFilterLinksPatch =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementProFileFilterLinksPatch{..}
          = go _mpfflpAccountId _mpfflpWebPropertyId
              _mpfflpProFileId
              _mpfflpLinkId
              (Just AltJSON)
              _mpfflpPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksPatchResource)
                      mempty
