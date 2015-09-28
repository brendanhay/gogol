{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Androidenterprise.Collections.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @androidenterprise.collections.delete@.
module Network.Google.API.Androidenterprise.Collections.Delete
    (
    -- * REST Resource
      CollectionsDeleteAPI

    -- * Creating a Request
    , collectionsDelete'
    , CollectionsDelete'

    -- * Request Lenses
    , cdQuotaUser
    , cdPrettyPrint
    , cdEnterpriseId
    , cdUserIp
    , cdCollectionId
    , cdKey
    , cdOauthToken
    , cdFields
    , cdAlt
    ) where

import           Network.Google.Play.Enterprise.Types
import           Network.Google.Prelude

-- | A resource alias for androidenterprise.collections.delete which the
-- 'CollectionsDelete'' request conforms to.
type CollectionsDeleteAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Delete '[JSON] ()

-- | Deletes a collection.
--
-- /See:/ 'collectionsDelete'' smart constructor.
data CollectionsDelete' = CollectionsDelete'
    { _cdQuotaUser    :: !(Maybe Text)
    , _cdPrettyPrint  :: !Bool
    , _cdEnterpriseId :: !Text
    , _cdUserIp       :: !(Maybe Text)
    , _cdCollectionId :: !Text
    , _cdKey          :: !(Maybe Text)
    , _cdOauthToken   :: !(Maybe Text)
    , _cdFields       :: !(Maybe Text)
    , _cdAlt          :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cdQuotaUser'
--
-- * 'cdPrettyPrint'
--
-- * 'cdEnterpriseId'
--
-- * 'cdUserIp'
--
-- * 'cdCollectionId'
--
-- * 'cdKey'
--
-- * 'cdOauthToken'
--
-- * 'cdFields'
--
-- * 'cdAlt'
collectionsDelete'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionsDelete'
collectionsDelete' pCdEnterpriseId_ pCdCollectionId_ =
    CollectionsDelete'
    { _cdQuotaUser = Nothing
    , _cdPrettyPrint = True
    , _cdEnterpriseId = pCdEnterpriseId_
    , _cdUserIp = Nothing
    , _cdCollectionId = pCdCollectionId_
    , _cdKey = Nothing
    , _cdOauthToken = Nothing
    , _cdFields = Nothing
    , _cdAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cdQuotaUser :: Lens' CollectionsDelete' (Maybe Text)
cdQuotaUser
  = lens _cdQuotaUser (\ s a -> s{_cdQuotaUser = a})

-- | Returns response with indentations and line breaks.
cdPrettyPrint :: Lens' CollectionsDelete' Bool
cdPrettyPrint
  = lens _cdPrettyPrint
      (\ s a -> s{_cdPrettyPrint = a})

-- | The ID of the enterprise.
cdEnterpriseId :: Lens' CollectionsDelete' Text
cdEnterpriseId
  = lens _cdEnterpriseId
      (\ s a -> s{_cdEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cdUserIp :: Lens' CollectionsDelete' (Maybe Text)
cdUserIp = lens _cdUserIp (\ s a -> s{_cdUserIp = a})

-- | The ID of the collection.
cdCollectionId :: Lens' CollectionsDelete' Text
cdCollectionId
  = lens _cdCollectionId
      (\ s a -> s{_cdCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cdKey :: Lens' CollectionsDelete' (Maybe Text)
cdKey = lens _cdKey (\ s a -> s{_cdKey = a})

-- | OAuth 2.0 token for the current user.
cdOauthToken :: Lens' CollectionsDelete' (Maybe Text)
cdOauthToken
  = lens _cdOauthToken (\ s a -> s{_cdOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cdFields :: Lens' CollectionsDelete' (Maybe Text)
cdFields = lens _cdFields (\ s a -> s{_cdFields = a})

-- | Data format for the response.
cdAlt :: Lens' CollectionsDelete' Alt
cdAlt = lens _cdAlt (\ s a -> s{_cdAlt = a})

instance GoogleRequest CollectionsDelete' where
        type Rs CollectionsDelete' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionsDelete'{..}
          = go _cdQuotaUser (Just _cdPrettyPrint)
              _cdEnterpriseId
              _cdUserIp
              _cdCollectionId
              _cdKey
              _cdOauthToken
              _cdFields
              (Just _cdAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionsDeleteAPI)
                      r
                      u
