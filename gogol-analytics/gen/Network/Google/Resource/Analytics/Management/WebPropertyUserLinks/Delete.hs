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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Delete
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes a user from the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webpropertyUserLinks.delete@.
module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Delete
    (
    -- * REST Resource
      ManagementWebPropertyUserLinksDeleteResource

    -- * Creating a Request
    , managementWebPropertyUserLinksDelete
    , ManagementWebPropertyUserLinksDelete

    -- * Request Lenses
    , mwpuldWebPropertyId
    , mwpuldAccountId
    , mwpuldLinkId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.webpropertyUserLinks.delete@ method which the
-- 'ManagementWebPropertyUserLinksDelete' request conforms to.
type ManagementWebPropertyUserLinksDeleteResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "webproperties" :>
                 Capture "webPropertyId" Text :>
                   "entityUserLinks" :>
                     Capture "linkId" Text :>
                       QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes a user from the given web property.
--
-- /See:/ 'managementWebPropertyUserLinksDelete' smart constructor.
data ManagementWebPropertyUserLinksDelete =
  ManagementWebPropertyUserLinksDelete'
    { _mwpuldWebPropertyId :: !Text
    , _mwpuldAccountId     :: !Text
    , _mwpuldLinkId        :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)

-- | Creates a value of 'ManagementWebPropertyUserLinksDelete' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpuldWebPropertyId'
--
-- * 'mwpuldAccountId'
--
-- * 'mwpuldLinkId'
managementWebPropertyUserLinksDelete
    :: Text -- ^ 'mwpuldWebPropertyId'
    -> Text -- ^ 'mwpuldAccountId'
    -> Text -- ^ 'mwpuldLinkId'
    -> ManagementWebPropertyUserLinksDelete
managementWebPropertyUserLinksDelete pMwpuldWebPropertyId_ pMwpuldAccountId_ pMwpuldLinkId_ =
  ManagementWebPropertyUserLinksDelete'
    { _mwpuldWebPropertyId = pMwpuldWebPropertyId_
    , _mwpuldAccountId = pMwpuldAccountId_
    , _mwpuldLinkId = pMwpuldLinkId_
    }

-- | Web Property ID to delete the user link for.
mwpuldWebPropertyId :: Lens' ManagementWebPropertyUserLinksDelete Text
mwpuldWebPropertyId
  = lens _mwpuldWebPropertyId
      (\ s a -> s{_mwpuldWebPropertyId = a})

-- | Account ID to delete the user link for.
mwpuldAccountId :: Lens' ManagementWebPropertyUserLinksDelete Text
mwpuldAccountId
  = lens _mwpuldAccountId
      (\ s a -> s{_mwpuldAccountId = a})

-- | Link ID to delete the user link for.
mwpuldLinkId :: Lens' ManagementWebPropertyUserLinksDelete Text
mwpuldLinkId
  = lens _mwpuldLinkId (\ s a -> s{_mwpuldLinkId = a})

instance GoogleRequest
           ManagementWebPropertyUserLinksDelete
         where
        type Rs ManagementWebPropertyUserLinksDelete = ()
        type Scopes ManagementWebPropertyUserLinksDelete =
             '["https://www.googleapis.com/auth/analytics.manage.users"]
        requestClient
          ManagementWebPropertyUserLinksDelete'{..}
          = go _mwpuldAccountId _mwpuldWebPropertyId
              _mwpuldLinkId
              (Just AltJSON)
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementWebPropertyUserLinksDeleteResource)
                      mempty
