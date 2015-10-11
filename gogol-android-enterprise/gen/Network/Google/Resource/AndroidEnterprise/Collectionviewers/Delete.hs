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
-- Module      : Network.Google.Resource.AndroidEnterprise.Collectionviewers.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Removes the user from the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ <https://developers.google.com/play/enterprise Google Play EMM API Reference> for @AndroidEnterpriseCollectionviewersDelete@.
module Network.Google.Resource.AndroidEnterprise.Collectionviewers.Delete
    (
    -- * REST Resource
      CollectionviewersDeleteResource

    -- * Creating a Request
    , collectionviewersDelete'
    , CollectionviewersDelete'

    -- * Request Lenses
    , cddQuotaUser
    , cddPrettyPrint
    , cddEnterpriseId
    , cddUserIP
    , cddCollectionId
    , cddUserId
    , cddKey
    , cddOAuthToken
    , cddFields
    ) where

import           Network.Google.AndroidEnterprise.Types
import           Network.Google.Prelude

-- | A resource alias for @AndroidEnterpriseCollectionviewersDelete@ method which the
-- 'CollectionviewersDelete'' request conforms to.
type CollectionviewersDeleteResource =
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
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :> Delete '[JSON] ()

-- | Removes the user from the list of those specifically allowed to see the
-- collection. If the collection\'s visibility is set to viewersOnly then
-- only such users will see the collection.
--
-- /See:/ 'collectionviewersDelete'' smart constructor.
data CollectionviewersDelete' = CollectionviewersDelete'
    { _cddQuotaUser    :: !(Maybe Text)
    , _cddPrettyPrint  :: !Bool
    , _cddEnterpriseId :: !Text
    , _cddUserIP       :: !(Maybe Text)
    , _cddCollectionId :: !Text
    , _cddUserId       :: !Text
    , _cddKey          :: !(Maybe AuthKey)
    , _cddOAuthToken   :: !(Maybe OAuthToken)
    , _cddFields       :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'CollectionviewersDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cddQuotaUser'
--
-- * 'cddPrettyPrint'
--
-- * 'cddEnterpriseId'
--
-- * 'cddUserIP'
--
-- * 'cddCollectionId'
--
-- * 'cddUserId'
--
-- * 'cddKey'
--
-- * 'cddOAuthToken'
--
-- * 'cddFields'
collectionviewersDelete'
    :: Text -- ^ 'enterpriseId'
    -> Text -- ^ 'collectionId'
    -> Text -- ^ 'userId'
    -> CollectionviewersDelete'
collectionviewersDelete' pCddEnterpriseId_ pCddCollectionId_ pCddUserId_ =
    CollectionviewersDelete'
    { _cddQuotaUser = Nothing
    , _cddPrettyPrint = True
    , _cddEnterpriseId = pCddEnterpriseId_
    , _cddUserIP = Nothing
    , _cddCollectionId = pCddCollectionId_
    , _cddUserId = pCddUserId_
    , _cddKey = Nothing
    , _cddOAuthToken = Nothing
    , _cddFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
cddQuotaUser :: Lens' CollectionviewersDelete' (Maybe Text)
cddQuotaUser
  = lens _cddQuotaUser (\ s a -> s{_cddQuotaUser = a})

-- | Returns response with indentations and line breaks.
cddPrettyPrint :: Lens' CollectionviewersDelete' Bool
cddPrettyPrint
  = lens _cddPrettyPrint
      (\ s a -> s{_cddPrettyPrint = a})

-- | The ID of the enterprise.
cddEnterpriseId :: Lens' CollectionviewersDelete' Text
cddEnterpriseId
  = lens _cddEnterpriseId
      (\ s a -> s{_cddEnterpriseId = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
cddUserIP :: Lens' CollectionviewersDelete' (Maybe Text)
cddUserIP
  = lens _cddUserIP (\ s a -> s{_cddUserIP = a})

-- | The ID of the collection.
cddCollectionId :: Lens' CollectionviewersDelete' Text
cddCollectionId
  = lens _cddCollectionId
      (\ s a -> s{_cddCollectionId = a})

-- | The ID of the user.
cddUserId :: Lens' CollectionviewersDelete' Text
cddUserId
  = lens _cddUserId (\ s a -> s{_cddUserId = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
cddKey :: Lens' CollectionviewersDelete' (Maybe AuthKey)
cddKey = lens _cddKey (\ s a -> s{_cddKey = a})

-- | OAuth 2.0 token for the current user.
cddOAuthToken :: Lens' CollectionviewersDelete' (Maybe OAuthToken)
cddOAuthToken
  = lens _cddOAuthToken
      (\ s a -> s{_cddOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
cddFields :: Lens' CollectionviewersDelete' (Maybe Text)
cddFields
  = lens _cddFields (\ s a -> s{_cddFields = a})

instance GoogleAuth CollectionviewersDelete' where
        _AuthKey = cddKey . _Just
        _AuthToken = cddOAuthToken . _Just

instance GoogleRequest CollectionviewersDelete' where
        type Rs CollectionviewersDelete' = ()
        request = requestWith androidEnterpriseRequest
        requestWith rq CollectionviewersDelete'{..}
          = go _cddEnterpriseId _cddCollectionId _cddUserId
              _cddQuotaUser
              (Just _cddPrettyPrint)
              _cddUserIP
              _cddFields
              _cddKey
              _cddOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy CollectionviewersDeleteResource)
                      rq
