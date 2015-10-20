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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a new user to the given web property.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @analytics.management.webpropertyUserLinks.insert@.
module Network.Google.Resource.Analytics.Management.WebPropertyUserLinks.Insert
    (
    -- * REST Resource
      ManagementWebPropertyUserLinksInsertResource

    -- * Creating a Request
    , managementWebPropertyUserLinksInsert
    , ManagementWebPropertyUserLinksInsert

    -- * Request Lenses
    , mwpuliWebPropertyId
    , mwpuliPayload
    , mwpuliAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @analytics.management.webpropertyUserLinks.insert@ method which the
-- 'ManagementWebPropertyUserLinksInsert' request conforms to.
type ManagementWebPropertyUserLinksInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityUserLinks" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] EntityUserLink :>
                     Post '[JSON] EntityUserLink

-- | Adds a new user to the given web property.
--
-- /See:/ 'managementWebPropertyUserLinksInsert' smart constructor.
data ManagementWebPropertyUserLinksInsert = ManagementWebPropertyUserLinksInsert
    { _mwpuliWebPropertyId :: !Text
    , _mwpuliPayload       :: !EntityUserLink
    , _mwpuliAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyUserLinksInsert' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpuliWebPropertyId'
--
-- * 'mwpuliPayload'
--
-- * 'mwpuliAccountId'
managementWebPropertyUserLinksInsert
    :: Text -- ^ 'mwpuliWebPropertyId'
    -> EntityUserLink -- ^ 'mwpuliPayload'
    -> Text -- ^ 'mwpuliAccountId'
    -> ManagementWebPropertyUserLinksInsert
managementWebPropertyUserLinksInsert pMwpuliWebPropertyId_ pMwpuliPayload_ pMwpuliAccountId_ =
    ManagementWebPropertyUserLinksInsert
    { _mwpuliWebPropertyId = pMwpuliWebPropertyId_
    , _mwpuliPayload = pMwpuliPayload_
    , _mwpuliAccountId = pMwpuliAccountId_
    }

-- | Web Property ID to create the user link for.
mwpuliWebPropertyId :: Lens' ManagementWebPropertyUserLinksInsert Text
mwpuliWebPropertyId
  = lens _mwpuliWebPropertyId
      (\ s a -> s{_mwpuliWebPropertyId = a})

-- | Multipart request metadata.
mwpuliPayload :: Lens' ManagementWebPropertyUserLinksInsert EntityUserLink
mwpuliPayload
  = lens _mwpuliPayload
      (\ s a -> s{_mwpuliPayload = a})

-- | Account ID to create the user link for.
mwpuliAccountId :: Lens' ManagementWebPropertyUserLinksInsert Text
mwpuliAccountId
  = lens _mwpuliAccountId
      (\ s a -> s{_mwpuliAccountId = a})

instance GoogleRequest
         ManagementWebPropertyUserLinksInsert where
        type Rs ManagementWebPropertyUserLinksInsert =
             EntityUserLink
        requestClient
          ManagementWebPropertyUserLinksInsert{..}
          = go _mwpuliAccountId _mwpuliWebPropertyId
              (Just AltJSON)
              _mwpuliPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementWebPropertyUserLinksInsertResource)
                      mempty
