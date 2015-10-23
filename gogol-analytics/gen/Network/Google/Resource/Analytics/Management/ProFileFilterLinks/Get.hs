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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a single profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.get@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Get
    (
    -- * REST Resource
      ManagementProFileFilterLinksGetResource

    -- * Creating a Request
    , managementProFileFilterLinksGet
    , ManagementProFileFilterLinksGet

    -- * Request Lenses
    , mpfflgWebPropertyId
    , mpfflgProFileId
    , mpfflgAccountId
    , mpfflgLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.profileFilterLinks.get@ method which the
-- 'ManagementProFileFilterLinksGet' request conforms to.
type ManagementProFileFilterLinksGetResource =
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
                             Get '[JSON] ProFileFilterLink

-- | Returns a single profile filter link.
--
-- /See:/ 'managementProFileFilterLinksGet' smart constructor.
data ManagementProFileFilterLinksGet = ManagementProFileFilterLinksGet
    { _mpfflgWebPropertyId :: !Text
    , _mpfflgProFileId     :: !Text
    , _mpfflgAccountId     :: !Text
    , _mpfflgLinkId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileFilterLinksGet' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfflgWebPropertyId'
--
-- * 'mpfflgProFileId'
--
-- * 'mpfflgAccountId'
--
-- * 'mpfflgLinkId'
managementProFileFilterLinksGet
    :: Text -- ^ 'mpfflgWebPropertyId'
    -> Text -- ^ 'mpfflgProFileId'
    -> Text -- ^ 'mpfflgAccountId'
    -> Text -- ^ 'mpfflgLinkId'
    -> ManagementProFileFilterLinksGet
managementProFileFilterLinksGet pMpfflgWebPropertyId_ pMpfflgProFileId_ pMpfflgAccountId_ pMpfflgLinkId_ =
    ManagementProFileFilterLinksGet
    { _mpfflgWebPropertyId = pMpfflgWebPropertyId_
    , _mpfflgProFileId = pMpfflgProFileId_
    , _mpfflgAccountId = pMpfflgAccountId_
    , _mpfflgLinkId = pMpfflgLinkId_
    }

-- | Web property Id to retrieve profile filter link for.
mpfflgWebPropertyId :: Lens' ManagementProFileFilterLinksGet Text
mpfflgWebPropertyId
  = lens _mpfflgWebPropertyId
      (\ s a -> s{_mpfflgWebPropertyId = a})

-- | Profile ID to retrieve filter link for.
mpfflgProFileId :: Lens' ManagementProFileFilterLinksGet Text
mpfflgProFileId
  = lens _mpfflgProFileId
      (\ s a -> s{_mpfflgProFileId = a})

-- | Account ID to retrieve profile filter link for.
mpfflgAccountId :: Lens' ManagementProFileFilterLinksGet Text
mpfflgAccountId
  = lens _mpfflgAccountId
      (\ s a -> s{_mpfflgAccountId = a})

-- | ID of the profile filter link.
mpfflgLinkId :: Lens' ManagementProFileFilterLinksGet Text
mpfflgLinkId
  = lens _mpfflgLinkId (\ s a -> s{_mpfflgLinkId = a})

instance GoogleRequest
         ManagementProFileFilterLinksGet where
        type Rs ManagementProFileFilterLinksGet =
             ProFileFilterLink
        requestClient ManagementProFileFilterLinksGet{..}
          = go _mpfflgAccountId _mpfflgWebPropertyId
              _mpfflgProFileId
              _mpfflgLinkId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksGetResource)
                      mempty
