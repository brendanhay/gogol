{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Collections.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseCollectionsInsert@.
module Androidenterprise.Collections.Insert
    (
    -- * REST Resource
      CollectionsInsertAPI

    -- * Creating a Request
    , collectionsInsert
    , CollectionsInsert

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciEnterpriseId
    , ciUserIp
    , ciKey
    , ciOauthToken
    , ciFields
    , ciAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseCollectionsInsert@ which the
-- 'CollectionsInsert' request conforms to.
type CollectionsInsertAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :> Post '[JSON] Collection

-- | Creates a new collection.
--
-- /See:/ 'collectionsInsert' smart constructor.
data CollectionsInsert = CollectionsInsert
    { _ciQuotaUser    :: !(Maybe Text)
    , _ciPrettyPrint  :: !Bool
    , _ciEnterpriseId :: !Text
    , _ciUserIp       :: !(Maybe Text)
    , _ciKey          :: !(Maybe Text)
    , _ciOauthToken   :: !(Maybe Text)
    , _ciFields       :: !(Maybe Text)
    , _ciAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsInsert'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ciQuotaUser'
--
-- * 'ciPrettyPrint'
--
-- * 'ciEnterpriseId'
--
-- * 'ciUserIp'
--
-- * 'ciKey'
--
-- * 'ciOauthToken'
--
-- * 'ciFields'
--
-- * 'ciAlt'
collectionsInsert
    :: Text -- ^ 'enterpriseId'
    -> CollectionsInsert
collectionsInsert pCiEnterpriseId_ =
    CollectionsInsert
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciEnterpriseId = pCiEnterpriseId_
    , _ciUserIp = Nothing
    , _ciKey = Nothing
    , _ciOauthToken = Nothing
    , _ciFields = Nothing
    , _ciAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
ciQuotaUser :: Lens' CollectionsInsert' (Maybe Text)
ciQuotaUser
  = lens _ciQuotaUser (\ s a -> s{_ciQuotaUser = a})

-- | Returns response with indentations and line breaks.
ciPrettyPrint :: Lens' CollectionsInsert' Bool
ciPrettyPrint
  = lens _ciPrettyPrint
      (\ s a -> s{_ciPrettyPrint = a})

-- | The ID of the enterprise.
ciEnterpriseId :: Lens' CollectionsInsert' Text
ciEnterpriseId
  = lens _ciEnterpriseId
      (\ s a -> s{_ciEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
ciUserIp :: Lens' CollectionsInsert' (Maybe Text)
ciUserIp = lens _ciUserIp (\ s a -> s{_ciUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CollectionsInsert' (Maybe Text)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | OAuth 2.0 token for the current user.
ciOauthToken :: Lens' CollectionsInsert' (Maybe Text)
ciOauthToken
  = lens _ciOauthToken (\ s a -> s{_ciOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CollectionsInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

-- | Data format for the response.
ciAlt :: Lens' CollectionsInsert' Text
ciAlt = lens _ciAlt (\ s a -> s{_ciAlt = a})

instance GoogleRequest CollectionsInsert' where
        type Rs CollectionsInsert' = Collection
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionsInsert{..}
          = go _ciQuotaUser _ciPrettyPrint _ciEnterpriseId
              _ciUserIp
              _ciKey
              _ciOauthToken
              _ciFields
              _ciAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionsInsertAPI)
                      r
                      u
