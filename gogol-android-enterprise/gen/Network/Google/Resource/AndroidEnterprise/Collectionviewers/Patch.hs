{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.AndroidEnterprise.Collectionviewers.Patch
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection. This method supports patch
-- semantics.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionviewersPatch@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Patch
    (
    -- * REST Resource
      CollectionviewersPatchResource

    -- * Creating a Request
    , collectionviewersPatch'
    , CollectionviewersPatch'

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpEnterpriseId
    , cpUserIP
    , cpCollectionId
    , cpPayload
    , cpUserId
    , cpKey
    , cpOAuthToken
    , cpFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionviewersPatch@ which the
-- 'CollectionviewersPatch'' request conforms to.
type CollectionviewersPatchResource =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :>
               Capture "userId" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               ReqBody '[OctetStream] User :> Patch '[JSON] User

-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection. This method supports patch
-- semantics.
--
-- /See:/ 'collectionviewersPatch'' smart constructor.
data CollectionviewersPatch' = CollectionviewersPatch'
    { _cpQuotaUser    :: !(Maybe Text)
    , _cpPrettyPrint  :: !Bool
    , _cpEnterpriseId :: !Text
    , _cpUserIP       :: !(Maybe Text)
    , _cpCollectionId :: !Text
    , _cpPayload      :: !User
    , _cpUserId       :: !Text
    , _cpKey          :: !(Maybe Key)
    , _cpOAuthToken   :: !(Maybe OAuthToken)
    , _cpFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersPatch'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cpQuotaUser'
--
-- * 'cpPrettyPrint'
--
-- * 'cpEnterpriseId'
--
-- * 'cpUserIP'
--
-- * 'cpCollectionId'
--
-- * 'cpPayload'
--
-- * 'cpUserId'
--
-- * 'cpKey'
--
-- * 'cpOAuthToken'
--
-- * 'cpFields'
collectionviewersPatch'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> User -- ^ 'payload'
    -> Text -- ^ 'userId'
    -> CollectionviewersPatch'
collectionviewersPatch' pCpEnterpriseId_ pCpCollectionId_ pCpPayload_ pCpUserId_ =
    CollectionviewersPatch'
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpEnterpriseId = pCpEnterpriseId_
    , _cpUserIP = Nothing
    , _cpCollectionId = pCpCollectionId_
    , _cpPayload = pCpPayload_
    , _cpUserId = pCpUserId_
    , _cpKey = Nothing
    , _cpOAuthToken = Nothing
    , _cpFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cpQuotaUser :: Lens' CollectionviewersPatch' (Maybe Text)
cpQuotaUser
  = lens _cpQuotaUser (\ s a -> s{_cpQuotaUser = a})

-- | Returns response with indentations and line breaks.
cpPrettyPrint :: Lens' CollectionviewersPatch' Bool
cpPrettyPrint
  = lens _cpPrettyPrint
      (\ s a -> s{_cpPrettyPrint = a})

-- | The ID of the enterprise.
cpEnterpriseId :: Lens' CollectionviewersPatch' Text
cpEnterpriseId
  = lens _cpEnterpriseId
      (\ s a -> s{_cpEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cpUserIP :: Lens' CollectionviewersPatch' (Maybe Text)
cpUserIP = lens _cpUserIP (\ s a -> s{_cpUserIP = a})

-- | The ID of the collection.
cpCollectionId :: Lens' CollectionviewersPatch' Text
cpCollectionId
  = lens _cpCollectionId
      (\ s a -> s{_cpCollectionId = a})

-- | Multipart request metadata.
cpPayload :: Lens' CollectionviewersPatch' User
cpPayload
  = lens _cpPayload (\ s a -> s{_cpPayload = a})

-- | The ID of the user.
cpUserId :: Lens' CollectionviewersPatch' Text
cpUserId = lens _cpUserId (\ s a -> s{_cpUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CollectionviewersPatch' (Maybe Key)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | OAuth 2.0 token for the current user.
cpOAuthToken :: Lens' CollectionviewersPatch' (Maybe OAuthToken)
cpOAuthToken
  = lens _cpOAuthToken (\ s a -> s{_cpOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CollectionviewersPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

instance GoogleAuth CollectionviewersPatch' where
        authKey = cpKey . _Just
        authToken = cpOAuthToken . _Just

instance GoogleRequest CollectionviewersPatch' where
        type Rs CollectionviewersPatch' = User
        request
          = requestWithRoute defReq androidEnterpriseURL
        requestWithRoute r u CollectionviewersPatch'{..}
          = go _cpEnterpriseId _cpCollectionId _cpUserId
              _cpQuotaUser
              (Just _cpPrettyPrint)
              _cpUserIP
              _cpFields
              _cpKey
              _cpOAuthToken
              (Just AltJSON)
              _cpPayload
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersPatchResource)
                      r
                      u
