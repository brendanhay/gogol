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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collections.Insert
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Creates a new collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionsInsert@.
module Network.Google.Resource.AndroidEnterprise.Collections.Insert
    (
    -- * REST Resource
      CollectionsInsertResource

    -- * Creating a Request
    , collectionsInsert'
    , CollectionsInsert'

    -- * Request Lenses
    , ciQuotaUser
    , ciPrettyPrint
    , ciEnterpriseId
    , ciUserIP
    , ciPayload
    , ciKey
    , ciOAuthToken
    , ciFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionsInsert@ method which the
-- 'CollectionsInsert'' request conforms to.
type CollectionsInsertResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "fields" Text :>
                   QueryParam "key" AuthKey :>
                     QueryParam "oauth_token" OAuthToken :>
                       QueryParam "alt" AltJSON :>
                         ReqBody '[JSON] Collection :> Post '[JSON] Collection

-- | Creates a new collection.
--
-- /See:/ 'collectionsInsert'' smart constructor.
data CollectionsInsert' = CollectionsInsert'
    { _ciQuotaUser    :: !(Maybe Text)
    , _ciPrettyPrint  :: !Bool
    , _ciEnterpriseId :: !Text
    , _ciUserIP       :: !(Maybe Text)
    , _ciPayload      :: !Collection
    , _ciKey          :: !(Maybe AuthKey)
    , _ciOAuthToken   :: !(Maybe OAuthToken)
    , _ciFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'ciUserIP'
--
-- * 'ciPayload'
--
-- * 'ciKey'
--
-- * 'ciOAuthToken'
--
-- * 'ciFields'
collectionsInsert'
    :: Text -- ^ 'enterpriseId'
    -> Collection -- ^ 'payload'
    -> CollectionsInsert'
collectionsInsert' pCiEnterpriseId_ pCiPayload_ =
    CollectionsInsert'
    { _ciQuotaUser = Nothing
    , _ciPrettyPrint = True
    , _ciEnterpriseId = pCiEnterpriseId_
    , _ciUserIP = Nothing
    , _ciPayload = pCiPayload_
    , _ciKey = Nothing
    , _ciOAuthToken = Nothing
    , _ciFields = Nothing
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
ciUserIP :: Lens' CollectionsInsert' (Maybe Text)
ciUserIP = lens _ciUserIP (\ s a -> s{_ciUserIP = a})

-- | Multipart request metadata.
ciPayload :: Lens' CollectionsInsert' Collection
ciPayload
  = lens _ciPayload (\ s a -> s{_ciPayload = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
ciKey :: Lens' CollectionsInsert' (Maybe AuthKey)
ciKey = lens _ciKey (\ s a -> s{_ciKey = a})

-- | OAuth 2.0 token for the current user.
ciOAuthToken :: Lens' CollectionsInsert' (Maybe OAuthToken)
ciOAuthToken
  = lens _ciOAuthToken (\ s a -> s{_ciOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
ciFields :: Lens' CollectionsInsert' (Maybe Text)
ciFields = lens _ciFields (\ s a -> s{_ciFields = a})

instance GoogleAuth CollectionsInsert' where
        _AuthKey = ciKey . _Just
        _AuthToken = ciOAuthToken . _Just

instance GoogleRequest CollectionsInsert' where
        type Rs CollectionsInsert' = Collection
        request = requestWith androidEnterpriseRequest
        requestWith rq CollectionsInsert'{..}
          = go _ciEnterpriseId _ciQuotaUser
              (Just _ciPrettyPrint)
              _ciUserIP
              _ciFields
              _ciKey
              _ciOAuthToken
              (Just AltJSON)
              _ciPayload
          where go
                  = clientBuild
                      (Proxy :: Proxy CollectionsInsertResource)
                      rq
