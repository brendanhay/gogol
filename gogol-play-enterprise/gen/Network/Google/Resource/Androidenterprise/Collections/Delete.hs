{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Androidenterprise.Collections.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes a collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidenterpriseCollectionsDelete@.
module Androidenterprise.Collections.Delete
    (
    -- * REST Resource
      CollectionsDeleteAPI

    -- * Creating a Request
    , collectionsDelete
    , CollectionsDelete

    -- * Request Lenses
    , cddQuotaUser
    , cddPrettyPrint
    , cddEnterpriseId
    , cddUserIp
    , cddCollectionId
    , cddKey
    , cddOauthToken
    , cddFields
    , cddAlt
    ) where

import           Network.Google.PlayEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidenterpriseCollectionsDelete@ which the
-- 'CollectionsDelete' request conforms to.
type CollectionsDeleteAPI =
     "enterprises" :>
       Capture "enterpriseId" Text :>
         "collections" :>
           Capture "collectionId" Text :> Delete '[JSON] ()

-- | Deletes a collection.
--
-- /See:/ 'collectionsDelete' smart constructor.
data CollectionsDelete = CollectionsDelete
    { _cddQuotaUser    :: !(Maybe Text)
    , _cddPrettyPrint  :: !Bool
    , _cddEnterpriseId :: !Text
    , _cddUserIp       :: !(Maybe Text)
    , _cddCollectionId :: !Text
    , _cddKey          :: !(Maybe Text)
    , _cddOauthToken   :: !(Maybe Text)
    , _cddFields       :: !(Maybe Text)
    , _cddAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddQuotaUser'
--
-- * 'cddPrettyPrint'
--
-- * 'cddEnterpriseId'
--
-- * 'cddUserIp'
--
-- * 'cddCollectionId'
--
-- * 'cddKey'
--
-- * 'cddOauthToken'
--
-- * 'cddFields'
--
-- * 'cddAlt'
collectionsDelete
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> CollectionsDelete
collectionsDelete pCddEnterpriseId_ pCddCollectionId_ =
    CollectionsDelete
    { _cddQuotaUser = Nothing
    , _cddPrettyPrint = True
    , _cddEnterpriseId = pCddEnterpriseId_
    , _cddUserIp = Nothing
    , _cddCollectionId = pCddCollectionId_
    , _cddKey = Nothing
    , _cddOauthToken = Nothing
    , _cddFields = Nothing
    , _cddAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cddQuotaUser :: Lens' CollectionsDelete' (Maybe Text)
cddQuotaUser
  = lens _cddQuotaUser (\ s a -> s{_cddQuotaUser = a})

-- | Returns response with indentations and line breaks.
cddPrettyPrint :: Lens' CollectionsDelete' Bool
cddPrettyPrint
  = lens _cddPrettyPrint
      (\ s a -> s{_cddPrettyPrint = a})

-- | The ID of the enterprise.
cddEnterpriseId :: Lens' CollectionsDelete' Text
cddEnterpriseId
  = lens _cddEnterpriseId
      (\ s a -> s{_cddEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cddUserIp :: Lens' CollectionsDelete' (Maybe Text)
cddUserIp
  = lens _cddUserIp (\ s a -> s{_cddUserIp = a})

-- | The ID of the collection.
cddCollectionId :: Lens' CollectionsDelete' Text
cddCollectionId
  = lens _cddCollectionId
      (\ s a -> s{_cddCollectionId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cddKey :: Lens' CollectionsDelete' (Maybe Text)
cddKey = lens _cddKey (\ s a -> s{_cddKey = a})

-- | OAuth 2.0 token for the current user.
cddOauthToken :: Lens' CollectionsDelete' (Maybe Text)
cddOauthToken
  = lens _cddOauthToken
      (\ s a -> s{_cddOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
cddFields :: Lens' CollectionsDelete' (Maybe Text)
cddFields
  = lens _cddFields (\ s a -> s{_cddFields = a})

-- | Data format for the response.
cddAlt :: Lens' CollectionsDelete' Text
cddAlt = lens _cddAlt (\ s a -> s{_cddAlt = a})

instance GoogleRequest CollectionsDelete' where
        type Rs CollectionsDelete' = ()
        request = requestWithRoute defReq playEnterpriseURL
        requestWithRoute r u CollectionsDelete{..}
          = go _cddQuotaUser _cddPrettyPrint _cddEnterpriseId
              _cddUserIp
              _cddCollectionId
              _cddKey
              _cddOauthToken
              _cddFields
              _cddAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy CollectionsDeleteAPI)
                      r
                      u
