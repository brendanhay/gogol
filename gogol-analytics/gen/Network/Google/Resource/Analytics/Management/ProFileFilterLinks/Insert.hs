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
-- Module      : Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Create a new profile filter link.
--
-- /See:/ <https://developers.google.com/analytics/ Google Analytics API Reference> for @AnalyticsManagementProFileFilterLinksInsert@.
module Network.Google.Resource.Analytics.Management.ProFileFilterLinks.Insert
    (
    -- * REST Resource
      ManagementProFileFilterLinksInsertResource

    -- * Creating a Request
    , managementProFileFilterLinksInsert'
    , ManagementProFileFilterLinksInsert'

    -- * Request Lenses
    , mpffliWebPropertyId
    , mpffliProFileId
    , mpffliPayload
    , mpffliAccountId
    ) where

import           Network.Google.Analytics.Types
import           Network.Google.Prelude

-- | A resource alias for @AnalyticsManagementProFileFilterLinksInsert@ method which the
-- 'ManagementProFileFilterLinksInsert'' request conforms to.
type ManagementProFileFilterLinksInsertResource =
     "management" :>
       "accounts" :>
         Capture "accountId" Text :>
           "webproperties" :>
             Capture "webPropertyId" Text :>
               "profiles" :>
                 Capture "profileId" Text :>
                   "profileFilterLinks" :>
                     QueryParam "alt" AltJSON :>
                       ReqBody '[JSON] ProFileFilterLink :>
                         Post '[JSON] ProFileFilterLink

-- | Create a new profile filter link.
--
-- /See:/ 'managementProFileFilterLinksInsert'' smart constructor.
data ManagementProFileFilterLinksInsert' = ManagementProFileFilterLinksInsert'
    { _mpffliWebPropertyId :: !Text
    , _mpffliProFileId     :: !Text
    , _mpffliPayload       :: !ProFileFilterLink
    , _mpffliAccountId     :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ManagementProFileFilterLinksInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'mpffliWebPropertyId'
--
-- * 'mpffliProFileId'
--
-- * 'mpffliPayload'
--
-- * 'mpffliAccountId'
managementProFileFilterLinksInsert'
    :: Text -- ^ 'webPropertyId'
    -> Text -- ^ 'profileId'
    -> ProFileFilterLink -- ^ 'payload'
    -> Text -- ^ 'accountId'
    -> ManagementProFileFilterLinksInsert'
managementProFileFilterLinksInsert' pMpffliWebPropertyId_ pMpffliProFileId_ pMpffliPayload_ pMpffliAccountId_ =
    ManagementProFileFilterLinksInsert'
    { _mpffliWebPropertyId = pMpffliWebPropertyId_
    , _mpffliProFileId = pMpffliProFileId_
    , _mpffliPayload = pMpffliPayload_
    , _mpffliAccountId = pMpffliAccountId_
    }

-- | Web property Id to create profile filter link for.
mpffliWebPropertyId :: Lens' ManagementProFileFilterLinksInsert' Text
mpffliWebPropertyId
  = lens _mpffliWebPropertyId
      (\ s a -> s{_mpffliWebPropertyId = a})

-- | Profile ID to create filter link for.
mpffliProFileId :: Lens' ManagementProFileFilterLinksInsert' Text
mpffliProFileId
  = lens _mpffliProFileId
      (\ s a -> s{_mpffliProFileId = a})

-- | Multipart request metadata.
mpffliPayload :: Lens' ManagementProFileFilterLinksInsert' ProFileFilterLink
mpffliPayload
  = lens _mpffliPayload
      (\ s a -> s{_mpffliPayload = a})

-- | Account ID to create profile filter link for.
mpffliAccountId :: Lens' ManagementProFileFilterLinksInsert' Text
mpffliAccountId
  = lens _mpffliAccountId
      (\ s a -> s{_mpffliAccountId = a})

instance GoogleRequest
         ManagementProFileFilterLinksInsert' where
        type Rs ManagementProFileFilterLinksInsert' =
             ProFileFilterLink
        requestClient ManagementProFileFilterLinksInsert'{..}
          = go _mpffliAccountId _mpffliWebPropertyId
              _mpffliProFileId
              (Just AltJSON)
              _mpffliPayload
              analyticsService
          where go
                  = buildClient
                      (Proxy ::
                         Proxy ManagementProFileFilterLinksInsertResource)
                      mempty
