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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Delete
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete a profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileFilterLinks.delete@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Delete
    (
    -- * REST Resource
      ManagementProFileFilterLinksDeleteResource

    -- * Creating a Request
    , managementProFileFilterLinksDelete
    , ManagementProFileFilterLinksDelete

    -- * Request Lenses
    , mpffldWebPropertyId
    , mpffldProFileId
    , mpffldAccountId
    , mpffldLinkId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.profileFilterLinks.delete@ method which the
-- 'ManagementProFileFilterLinksDelete' request conforms to.
type ManagementProFileFilterLinksDeleteResource =
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
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Delete a profile filter link.
--
-- /See:/ 'managementProFileFilterLinksDelete' smart constructor.
data ManagementProFileFilterLinksDelete =
  ManagementProFileFilterLinksDelete'
    { _mpffldWebPropertyId :: !Text
    , _mpffldProFileId :: !Text
    , _mpffldAccountId :: !Text
    , _mpffldLinkId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementProFileFilterLinksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpffldWebPropertyId'
--
-- * 'mpffldProFileId'
--
-- * 'mpffldAccountId'
--
-- * 'mpffldLinkId'
managementProFileFilterLinksDelete
    :: Text -- ^ 'mpffldWebPropertyId'
    -> Text -- ^ 'mpffldProFileId'
    -> Text -- ^ 'mpffldAccountId'
    -> Text -- ^ 'mpffldLinkId'
    -> ManagementProFileFilterLinksDelete
managementProFileFilterLinksDelete pMpffldWebPropertyId_ pMpffldProFileId_ pMpffldAccountId_ pMpffldLinkId_ =
  ManagementProFileFilterLinksDelete'
    { _mpffldWebPropertyId = pMpffldWebPropertyId_
    , _mpffldProFileId = pMpffldProFileId_
    , _mpffldAccountId = pMpffldAccountId_
    , _mpffldLinkId = pMpffldLinkId_
    }


-- | Web property Id to which the profile filter link belongs.
mpffldWebPropertyId :: Lens' ManagementProFileFilterLinksDelete Text
mpffldWebPropertyId
  = lens _mpffldWebPropertyId
      (\ s a -> s{_mpffldWebPropertyId = a})

-- | Profile ID to which the filter link belongs.
mpffldProFileId :: Lens' ManagementProFileFilterLinksDelete Text
mpffldProFileId
  = lens _mpffldProFileId
      (\ s a -> s{_mpffldProFileId = a})

-- | Account ID to which the profile filter link belongs.
mpffldAccountId :: Lens' ManagementProFileFilterLinksDelete Text
mpffldAccountId
  = lens _mpffldAccountId
      (\ s a -> s{_mpffldAccountId = a})

-- | ID of the profile filter link to delete.
mpffldLinkId :: Lens' ManagementProFileFilterLinksDelete Text
mpffldLinkId
  = lens _mpffldLinkId (\ s a -> s{_mpffldLinkId = a})

instance GoogleRequest
           ManagementProFileFilterLinksDelete
         where
        type Rs ManagementProFileFilterLinksDelete = ()
        type Scopes ManagementProFileFilterLinksDelete =
             '["https://www.googleapis.com/auth/analytics.edit"]
        requestClient ManagementProFileFilterLinksDelete'{..}
          = go _mpffldAccountId _mpffldWebPropertyId
              _mpffldProFileId
              _mpffldLinkId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksDeleteResource)
                      mempty
