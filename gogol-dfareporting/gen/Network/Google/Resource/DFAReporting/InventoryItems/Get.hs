{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
    , iigUserIp
    , iigProfileId
    , iigKey
    , iigId
    , iigProjectId
    , iigOauthToken
    , iigFields
    , iigAlt
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
                       QueryParam "key" Text :>
                         QueryParam "oauth_token" Text :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] InventoryItem

-- | Gets one inventory item by ID.
--
-- /See:/ 'inventoryItemsGet'' smart constructor.
data InventoryItemsGet' = InventoryItemsGet'
    { _iigQuotaUser   :: !(Maybe Text)
    , _iigPrettyPrint :: !Bool
    , _iigUserIp      :: !(Maybe Text)
    , _iigProfileId   :: !Int64
    , _iigKey         :: !(Maybe Text)
    , _iigId          :: !Int64
    , _iigProjectId   :: !Int64
    , _iigOauthToken  :: !(Maybe Text)
    , _iigFields      :: !(Maybe Text)
    , _iigAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InventoryItemsGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iigQuotaUser'
--
-- * 'iigPrettyPrint'
--
-- * 'iigUserIp'
--
-- * 'iigProfileId'
--
-- * 'iigKey'
--
-- * 'iigId'
--
-- * 'iigProjectId'
--
-- * 'iigOauthToken'
--
-- * 'iigFields'
--
-- * 'iigAlt'
inventoryItemsGet'
    :: Int64 -- ^ 'profileId'
    -> Int64 -- ^ 'id'
    -> Int64 -- ^ 'projectId'
    -> InventoryItemsGet'
inventoryItemsGet' pIigProfileId_ pIigId_ pIigProjectId_ =
    InventoryItemsGet'
    { _iigQuotaUser = Nothing
    , _iigPrettyPrint = True
    , _iigUserIp = Nothing
    , _iigProfileId = pIigProfileId_
    , _iigKey = Nothing
    , _iigId = pIigId_
    , _iigProjectId = pIigProjectId_
    , _iigOauthToken = Nothing
    , _iigFields = Nothing
    , _iigAlt = JSON
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
iigUserIp :: Lens' InventoryItemsGet' (Maybe Text)
iigUserIp
  = lens _iigUserIp (\ s a -> s{_iigUserIp = a})

-- | User profile ID associated with this request.
iigProfileId :: Lens' InventoryItemsGet' Int64
iigProfileId
  = lens _iigProfileId (\ s a -> s{_iigProfileId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iigKey :: Lens' InventoryItemsGet' (Maybe Text)
iigKey = lens _iigKey (\ s a -> s{_iigKey = a})

-- | Inventory item ID.
iigId :: Lens' InventoryItemsGet' Int64
iigId = lens _iigId (\ s a -> s{_iigId = a})

-- | Project ID for order documents.
iigProjectId :: Lens' InventoryItemsGet' Int64
iigProjectId
  = lens _iigProjectId (\ s a -> s{_iigProjectId = a})

-- | OAuth 2.0 token for the current user.
iigOauthToken :: Lens' InventoryItemsGet' (Maybe Text)
iigOauthToken
  = lens _iigOauthToken
      (\ s a -> s{_iigOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iigFields :: Lens' InventoryItemsGet' (Maybe Text)
iigFields
  = lens _iigFields (\ s a -> s{_iigFields = a})

-- | Data format for the response.
iigAlt :: Lens' InventoryItemsGet' Alt
iigAlt = lens _iigAlt (\ s a -> s{_iigAlt = a})

instance GoogleRequest InventoryItemsGet' where
        type Rs InventoryItemsGet' = InventoryItem
        request = requestWithRoute defReq dFAReportingURL
        requestWithRoute r u InventoryItemsGet'{..}
          = go _iigQuotaUser (Just _iigPrettyPrint) _iigUserIp
              _iigProfileId
              _iigKey
              _iigId
              _iigProjectId
              _iigOauthToken
              _iigFields
              (Just _iigAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InventoryItemsGetResource)
                      r
                      u
