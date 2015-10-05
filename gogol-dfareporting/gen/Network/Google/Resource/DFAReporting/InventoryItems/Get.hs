{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.DFAReporting.InventoryItems.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Gets one inventory item by ID.
--
-- /See:/ <https://developers.google.com/doubleclick-advertisers/reporting/ DCM/DFA Reporting And Trafficking API Reference> for @DfareportingInventoryItemsGet@.
module Network.Google.Resource.DFAReporting.InventoryItems.Get
    (
    -- * REST Resource
      InventoryItemsGetResource

    -- * Creating a Request
    , inventoryItemsGet'
    , InventoryItemsGet'

    -- * Request Lenses
    , iigQuotaUser
    , iigPrettyPrint
    , iigUserIP
    , iigProFileId
    , iigKey
    , iigId
    , iigProjectId
    , iigOAuthToken
    , iigFields
    ) where

import           Network.Google.DFAReporting.Types
import           Network.Google.Prelude

-- | A resource alias for @DfareportingInventoryItemsGet@ which the
-- 'InventoryItemsGet'' request conforms to.
type InventoryItemsGetResource =
     "userprofiles" :>
       Capture "profileId" Int64 :>
         "projects" :>
           Capture "projectId" Int64 :>
             "inventoryItems" :>
               Capture "id" Int64 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] InventoryItem

-- | Gets one inventory item by ID.
--
-- /See:/ 'inventoryItemsGet'' smart constructor.
data InventoryItemsGet' = InventoryItemsGet'
    { _iigQuotaUser   :: !(Maybe Text)
    , _iigPrettyPrint :: !Bool
    , _iigUserIP      :: !(Maybe Text)
    , _iigProFileId   :: !Int64
    , _iigKey         :: !(Maybe Key)
    , _iigId          :: !Int64
    , _iigProjectId   :: !Int64
    , _iigOAuthToken  :: !(Maybe OAuthToken)
    , _iigFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryItemsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iigQuotaUser'
--
-- * 'iigPrettyPrint'
--
-- * 'iigUserIP'
--
-- * 'iigProFileId'
--
-- * 'iigKey'
--
-- * 'iigId'
--
-- * 'iigProjectId'
--
-- * 'iigOAuthToken'
--
-- * 'iigFields'
inventoryItemsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> Int64 -- ^ 'projectId'
    -> InventoryItemsGet'
inventoryItemsGet' pIigProFileId_ pIigId_ pIigProjectId_ =
    InventoryItemsGet'
    { _iigQuotaUser = Nothing
    , _iigPrettyPrint = True
    , _iigUserIP = Nothing
    , _iigProFileId = pIigProFileId_
    , _iigKey = Nothing
    , _iigId = pIigId_
    , _iigProjectId = pIigProjectId_
    , _iigOAuthToken = Nothing
    , _iigFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iigQuotaUser :: Lens' InventoryItemsGet' (Maybe Text)
iigQuotaUser
  = lens _iigQuotaUser (\ s a -> s{_iigQuotaUser = a})

-- | Returns response with indentations and line breaks.
iigPrettyPrint :: Lens' InventoryItemsGet' Bool
iigPrettyPrint
  = lens _iigPrettyPrint
      (\ s a -> s{_iigPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iigUserIP :: Lens' InventoryItemsGet' (Maybe Text)
iigUserIP
  = lens _iigUserIP (\ s a -> s{_iigUserIP = a})

-- | User profile ID associated with this request.
iigProFileId :: Lens' InventoryItemsGet' Int64
iigProFileId
  = lens _iigProFileId (\ s a -> s{_iigProFileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iigKey :: Lens' InventoryItemsGet' (Maybe Key)
iigKey = lens _iigKey (\ s a -> s{_iigKey = a})

-- | Inventory item ID.
iigId :: Lens' InventoryItemsGet' Int64
iigId = lens _iigId (\ s a -> s{_iigId = a})

-- | Project ID for order documents.
iigProjectId :: Lens' InventoryItemsGet' Int64
iigProjectId
  = lens _iigProjectId (\ s a -> s{_iigProjectId = a})

-- | OAuth 2.0 token for the current user.
iigOAuthToken :: Lens' InventoryItemsGet' (Maybe OAuthToken)
iigOAuthToken
  = lens _iigOAuthToken
      (\ s a -> s{_iigOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
iigFields :: Lens' InventoryItemsGet' (Maybe Text)
iigFields
  = lens _iigFields (\ s a -> s{_iigFields = a})

instance GoogleAuth InventoryItemsGet' where
        authKey = iigKey . _Just
        authToken = iigOAuthToken . _Just

instance GoogleRequest InventoryItemsGet' where
        type Rs InventoryItemsGet' = InventoryItem
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u InventoryItemsGet'{..}
          = go _iigProFileId _iigProjectId _iigId _iigQuotaUser
              (Just _iigPrettyPrint)
              _iigUserIP
              _iigFields
              _iigKey
              _iigOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InventoryItemsGetResource)
                      r
                      u
