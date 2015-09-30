{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Collectionviewers.Patch
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
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseCollectionviewersPatch@.
module Androidenterprise.Collectionviewers.Patch
    (
    -- * REST Resource
      CollectionviewersPatchAPI

    -- * Creating a Request
    , collectionviewersPatch
    , CollectionviewersPatch

    -- * Request Lenses
    , cpQuotaUser
    , cpPrettyPrint
    , cpEnterpriseId
    , cpUserIp
    , cpCollectionId
    , cpUserId
    , cpKey
    , cpOauthToken
    , cpFields
    , cpAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseCollectionviewersPatch@ which the
-- 'CollectionviewersPatch' request conforms to.
type CollectionviewersPatchAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             "users" :>
               Capture "userId" Text :> Patch '[JSON] User

-- | Adds the user to the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection. This method supports patch
-- semantics.
--
-- /See:/ 'collectionviewersPatch' smart constructor.
data CollectionviewersPatch = CollectionviewersPatch
    { _cpQuotaUser    :: !(Maybe Text)
    , _cpPrettyPrint  :: !Bool
    , _cpEnterpriseId :: !Text
    , _cpUserIp       :: !(Maybe Text)
    , _cpCollectionId :: !Text
    , _cpUserId       :: !Text
    , _cpKey          :: !(Maybe Text)
    , _cpOauthToken   :: !(Maybe Text)
    , _cpFields       :: !(Maybe Text)
    , _cpAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

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
-- * 'cpUserIp'
--
-- * 'cpCollectionId'
--
-- * 'cpUserId'
--
-- * 'cpKey'
--
-- * 'cpOauthToken'
--
-- * 'cpFields'
--
-- * 'cpAlt'
collectionviewersPatch
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Text -- ^ 'userId'
    -> CollectionviewersPatch
collectionviewersPatch pCpEnterpriseId_ pCpCollectionId_ pCpUserId_ =
    CollectionviewersPatch
    { _cpQuotaUser = Nothing
    , _cpPrettyPrint = True
    , _cpEnterpriseId = pCpEnterpriseId_
    , _cpUserIp = Nothing
    , _cpCollectionId = pCpCollectionId_
    , _cpUserId = pCpUserId_
    , _cpKey = Nothing
    , _cpOauthToken = Nothing
    , _cpFields = Nothing
    , _cpAlt = "json"
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
cpUserIp :: Lens' CollectionviewersPatch' (Maybe Text)
cpUserIp = lens _cpUserIp (\ s a -> s{_cpUserIp = a})

-- | The ID of the collection.
cpCollectionId :: Lens' CollectionviewersPatch' Text
cpCollectionId
  = lens _cpCollectionId
      (\ s a -> s{_cpCollectionId = a})

-- | The ID of the user.
cpUserId :: Lens' CollectionviewersPatch' Text
cpUserId = lens _cpUserId (\ s a -> s{_cpUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cpKey :: Lens' CollectionviewersPatch' (Maybe Text)
cpKey = lens _cpKey (\ s a -> s{_cpKey = a})

-- | OAuth 2.0 token for the current user.
cpOauthToken :: Lens' CollectionviewersPatch' (Maybe Text)
cpOauthToken
  = lens _cpOauthToken (\ s a -> s{_cpOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cpFields :: Lens' CollectionviewersPatch' (Maybe Text)
cpFields = lens _cpFields (\ s a -> s{_cpFields = a})

-- | Data format for the response.
cpAlt :: Lens' CollectionviewersPatch' Text
cpAlt = lens _cpAlt (\ s a -> s{_cpAlt = a})

instance GoogleRequest CollectionviewersPatch' where
        type Rs CollectionviewersPatch' = User
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionviewersPatch{..}
          = go _cpQuotaUser _cpPrettyPrint _cpEnterpriseId
              _cpUserIp
              _cpCollectionId
              _cpUserId
              _cpKey
              _cpOauthToken
              _cpFields
              _cpAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionviewersPatchAPI)
                      r
                      u
