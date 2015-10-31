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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileUserLinks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a user from the given view (profile).
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.profileUserLinks.delete@.
module Network.Google.Resource.Analytics.Management.ProFileUserLinks.Delete
    (
    -- * REST Resource
      ManagementProFileUserLinksDeleteResource

    -- * Creating a Request
    , managementProFileUserLinksDelete
    , ManagementProFileUserLinksDelete

    -- * Request Lenses
    , mpfuldWebPropertyId
    , mpfuldProFileId
    , mpfuldAccountId
    , mpfuldLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.profileUserLinks.delete@ method which the
-- 'ManagementProFileUserLinksDelete' request conforms to.
type ManagementProFileUserLinksDeleteResource =
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
                         Capture "linkId" Text :>
                           QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a user from the given view (profile).
--
-- /See:/ 'managementProFileUserLinksDelete' smart constructor.
data ManagementProFileUserLinksDelete = ManagementProFileUserLinksDelete
    { _mpfuldWebPropertyId :: !Text
    , _mpfuldProFileId     :: !Text
    , _mpfuldAccountId     :: !Text
    , _mpfuldLinkId        :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileUserLinksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpfuldWebPropertyId'
--
-- * 'mpfuldProFileId'
--
-- * 'mpfuldAccountId'
--
-- * 'mpfuldLinkId'
managementProFileUserLinksDelete
    :: Text -- ^ 'mpfuldWebPropertyId'
    -> Text -- ^ 'mpfuldProFileId'
    -> Text -- ^ 'mpfuldAccountId'
    -> Text -- ^ 'mpfuldLinkId'
    -> ManagementProFileUserLinksDelete
managementProFileUserLinksDelete pMpfuldWebPropertyId_ pMpfuldProFileId_ pMpfuldAccountId_ pMpfuldLinkId_ =
    ManagementProFileUserLinksDelete
    { _mpfuldWebPropertyId = pMpfuldWebPropertyId_
    , _mpfuldProFileId = pMpfuldProFileId_
    , _mpfuldAccountId = pMpfuldAccountId_
    , _mpfuldLinkId = pMpfuldLinkId_
    }

-- | Web Property ID to delete the user link for.
mpfuldWebPropertyId :: Lens' ManagementProFileUserLinksDelete Text
mpfuldWebPropertyId
  = lens _mpfuldWebPropertyId
      (\ s a -> s{_mpfuldWebPropertyId = a})

-- | View (Profile) ID to delete the user link for.
mpfuldProFileId :: Lens' ManagementProFileUserLinksDelete Text
mpfuldProFileId
  = lens _mpfuldProFileId
      (\ s a -> s{_mpfuldProFileId = a})

-- | Account ID to delete the user link for.
mpfuldAccountId :: Lens' ManagementProFileUserLinksDelete Text
mpfuldAccountId
  = lens _mpfuldAccountId
      (\ s a -> s{_mpfuldAccountId = a})

-- | Link ID to delete the user link for.
mpfuldLinkId :: Lens' ManagementProFileUserLinksDelete Text
mpfuldLinkId
  = lens _mpfuldLinkId (\ s a -> s{_mpfuldLinkId = a})

instance GoogleRequest
         ManagementProFileUserLinksDelete where
        type Rs ManagementProFileUserLinksDelete = ()
        type Scopes ManagementProFileUserLinksDelete =
             '["https://www.googleapis.com/auth/analytics.manage.users"]
        requestClient ManagementProFileUserLinksDelete{..}
          = go _mpfuldAccountId _mpfuldWebPropertyId
              _mpfuldProFileId
              _mpfuldLinkId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementProFileUserLinksDeleteResource)
                      mempty
