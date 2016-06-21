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
-- Module      : Network.Google.Resource.AndroidEnterprise.Entitlements.List
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- List of all entitlements for the specified user. Only the ID is set.
--
-- /See:/ <https://developers.google.com/android/work/play/emm-api Google Play EMM API Reference> for @androidenterprise.entitlements.list@.
module Network.Google.Resource.AndroidEnterprise.Entitlements.List
    (
    -- * REST Resource
      EntitlementsListResource

    -- * Creating a Request
    , entitlementsList
    , EntitlementsList

    -- * Request Lenses
    , elEnterpriseId
    , elUserId
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @androidenterprise.entitlements.list@ method which the
-- 'EntitlementsList' request conforms to.
type EntitlementsListResource =
     "androidenterprise" :>
       "v1" :>
         "enterprises" :>
           Capture "enterpriseId" Text :>
             "users" :>
               Capture "userId" Text :>
                 "entitlements" :>
                   QueryParam "alt" AltJSON :>
                     Get '[JSON] EntitlementsListResponse

-- | List of all entitlements for the specified user. Only the ID is set.
--
-- /See:/ 'entitlementsList' smart constructor.
data EntitlementsList = EntitlementsList'
    { _elEnterpriseId :: !Text
    , _elUserId       :: !Text
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'EntitlementsList' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'elEnterpriseId'
--
-- * 'elUserId'
entitlementsList
    :: Text -- ^ 'elEnterpriseId'
    -> Text -- ^ 'elUserId'
    -> EntitlementsList
entitlementsList pElEnterpriseId_ pElUserId_ =
    EntitlementsList'
    { _elEnterpriseId = pElEnterpriseId_
    , _elUserId = pElUserId_
    }

-- | The ID of the enterprise.
elEnterpriseId :: Lens' EntitlementsList Text
elEnterpriseId
  = lens _elEnterpriseId
      (\ s a -> s{_elEnterpriseId = a})

-- | The ID of the user.
elUserId :: Lens' EntitlementsList Text
elUserId = lens _elUserId (\ s a -> s{_elUserId = a})

instance GoogleRequest EntitlementsList where
        type Rs EntitlementsList = EntitlementsListResponse
        type Scopes EntitlementsList =
             '["https://www.googleapis.com/auth/androidenterprise"]
        requestClient EntitlementsList'{..}
          = go _elEnterpriseId _elUserId (Just AltJSON)
              androidEnterpriseService
          where go
                  = buildClient
                      (Proxy :: Proxy EntitlementsListResource)
                      mempty
