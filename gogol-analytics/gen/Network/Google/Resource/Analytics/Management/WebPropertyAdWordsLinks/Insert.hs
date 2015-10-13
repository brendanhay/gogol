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
-- Module      : Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a webProperty-AdWords link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementWebPropertyAdWordsLinksInsert@.
module Network.Google.Resource.Analytics.Management.WebPropertyAdWordsLinks.Insert
    (
    -- * REST Resource
      ManagementWebPropertyAdWordsLinksInsertResource

    -- * Creating a Request
    , managementWebPropertyAdWordsLinksInsert'
    , ManagementWebPropertyAdWordsLinksInsert'

    -- * Request Lenses
    , mwpawliWebPropertyId
    , mwpawliPayload
    , mwpawliAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementWebPropertyAdWordsLinksInsert@ method which the
-- 'ManagementWebPropertyAdWordsLinksInsert'' request conforms to.
type ManagementWebPropertyAdWordsLinksInsertResource
     =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "entityAdWordsLinks" :>
                 QueryParam "alt" AltJSON :>
                   ReqBody '[JSON] EntityAdWordsLink :>
                     Post '[JSON] EntityAdWordsLink

-- | Creates a webProperty-AdWords link.
--
-- /See:/ 'managementWebPropertyAdWordsLinksInsert'' smart constructor.
data ManagementWebPropertyAdWordsLinksInsert' = ManagementWebPropertyAdWordsLinksInsert'
    { _mwpawliWebPropertyId :: !Text
    , _mwpawliPayload       :: !EntityAdWordsLink
    , _mwpawliAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementWebPropertyAdWordsLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mwpawliWebPropertyId'
--
-- * 'mwpawliPayload'
--
-- * 'mwpawliAccountId'
managementWebPropertyAdWordsLinksInsert'
    :: Text -- ^ 'webPropertyId'
    -> EntityAdWordsLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementWebPropertyAdWordsLinksInsert'
managementWebPropertyAdWordsLinksInsert' pMwpawliWebPropertyId_ pMwpawliPayload_ pMwpawliAccountId_ =
    ManagementWebPropertyAdWordsLinksInsert'
    { _mwpawliWebPropertyId = pMwpawliWebPropertyId_
    , _mwpawliPayload = pMwpawliPayload_
    , _mwpawliAccountId = pMwpawliAccountId_
    }

-- | Web property ID to create the link for.
mwpawliWebPropertyId :: Lens' ManagementWebPropertyAdWordsLinksInsert' Text
mwpawliWebPropertyId
  = lens _mwpawliWebPropertyId
      (\ s a -> s{_mwpawliWebPropertyId = a})

-- | Multipart request metadata.
mwpawliPayload :: Lens' ManagementWebPropertyAdWordsLinksInsert' EntityAdWordsLink
mwpawliPayload
  = lens _mwpawliPayload
      (\ s a -> s{_mwpawliPayload = a})

-- | ID of the Google Analytics account to create the link for.
mwpawliAccountId :: Lens' ManagementWebPropertyAdWordsLinksInsert' Text
mwpawliAccountId
  = lens _mwpawliAccountId
      (\ s a -> s{_mwpawliAccountId = a})

instance GoogleRequest
         ManagementWebPropertyAdWordsLinksInsert' where
        type Rs ManagementWebPropertyAdWordsLinksInsert' =
             EntityAdWordsLink
        requestClient
          ManagementWebPropertyAdWordsLinksInsert'{..}
          = go _mwpawliAccountId _mwpawliWebPropertyId
              (Just AltJSON)
              _mwpawliPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy
                           ManagementWebPropertyAdWordsLinksInsertResource)
                      mempty
