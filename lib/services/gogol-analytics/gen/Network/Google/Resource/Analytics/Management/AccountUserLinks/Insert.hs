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
-- Module      : Network.Google.Resource.Analytics.Management.AccountUserLinks.Insert
-- Copyright   : (c) 2015-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new user to the given account.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.accountUserLinks.insert@.
module Network.Google.Resource.Analytics.Management.AccountUserLinks.Insert
    (
    -- * REST Resource
      ManagementAccountUserLinksInsertResource

    -- * Creating a Request
    , managementAccountUserLinksInsert
    , ManagementAccountUserLinksInsert

    -- * Request Lenses
    , mauliPayload
    , mauliAccountId
    ) where

import Network.Google.Analytics.Types
import Network.Google.Prelude

-- | A resource alias for @analytics.management.accountUserLinks.insert@ method which the
-- 'ManagementAccountUserLinksInsert' request conforms to.
type ManagementAccountUserLinksInsertResource =
     "analytics" :>
       "v3" :>
         "management" :>
           "accounts" :>
             Capture "accountId" Text :>
               "entityUserLinks" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] EntityUserLink :>
                     Post '[JSON] EntityUserLink

-- | Adds a new user to the given account.
--
-- /See:/ 'managementAccountUserLinksInsert' smart constructor.
data ManagementAccountUserLinksInsert =
  ManagementAccountUserLinksInsert'
    { _mauliPayload :: !EntityUserLink
    , _mauliAccountId :: !Text
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ManagementAccountUserLinksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mauliPayload'
--
-- * 'mauliAccountId'
managementAccountUserLinksInsert
    :: EntityUserLink -- ^ 'mauliPayload'
    -> Text -- ^ 'mauliAccountId'
    -> ManagementAccountUserLinksInsert
managementAccountUserLinksInsert pMauliPayload_ pMauliAccountId_ =
  ManagementAccountUserLinksInsert'
    {_mauliPayload = pMauliPayload_, _mauliAccountId = pMauliAccountId_}


-- | Multipart request metadata.
mauliPayload :: Lens' ManagementAccountUserLinksInsert EntityUserLink
mauliPayload
  = lens _mauliPayload (\ s a -> s{_mauliPayload = a})

-- | Account ID to create the user link for.
mauliAccountId :: Lens' ManagementAccountUserLinksInsert Text
mauliAccountId
  = lens _mauliAccountId
      (\ s a -> s{_mauliAccountId = a})

instance GoogleRequest
           ManagementAccountUserLinksInsert
         where
        type Rs ManagementAccountUserLinksInsert =
             EntityUserLink
        type Scopes ManagementAccountUserLinksInsert =
             '["https://www.googleapis.com/auth/analytics.manage.users"]
        requestClient ManagementAccountUserLinksInsert'{..}
          = go _mauliAccountId (Just AltJSON) _mauliPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementAccountUserLinksInsertResource)
                      mempty
