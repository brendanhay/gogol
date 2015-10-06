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
-- Module      : Network.Google.Resource.MapsEngine.Assets.Parents.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Return all parent ids of the specified asset.
--
-- /See:/ <https://developers.google.com/maps-engine/ Google Maps Engine API Reference> for @MapsEngineAssetsParentsList@.
module Network.Google.Resource.MapsEngine.Assets.Parents.List
    (
    -- * REST Resource
      AssetsParentsListResource

    -- * Creating a Request
    , assetsParentsList'
    , AssetsParentsList'

    -- * Request Lenses
    , assQuotaUser
    , assPrettyPrint
    , assUserIP
    , assKey
    , assId
    , assPageToken
    , assOAuthToken
    , assMaxResults
    , assFields
    ) where

import           Network.Google.MapsEngine.Types
import           Network.Google.Prelude

-- | A resource alias for @MapsEngineAssetsParentsList@ which the
-- 'AssetsParentsList'' request conforms to.
type AssetsParentsListResource =
     "assets" :>
       Capture "id" Text :>
         "parents" :>
           QueryParam "pageToken" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "fields" Text :>
                       QueryParam "key" AuthKey :>
                         QueryParam "oauth_token" OAuthToken :>
                           QueryParam "alt" AltJSON :>
                             Get '[JSON] ParentsListResponse

-- | Return all parent ids of the specified asset.
--
-- /See:/ 'assetsParentsList'' smart constructor.
data AssetsParentsList' = AssetsParentsList'
    { _assQuotaUser   :: !(Maybe Text)
    , _assPrettyPrint :: !Bool
    , _assUserIP      :: !(Maybe Text)
    , _assKey         :: !(Maybe AuthKey)
    , _assId          :: !Text
    , _assPageToken   :: !(Maybe Text)
    , _assOAuthToken  :: !(Maybe OAuthToken)
    , _assMaxResults  :: !(Maybe Word32)
    , _assFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AssetsParentsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'assQuotaUser'
--
-- * 'assPrettyPrint'
--
-- * 'assUserIP'
--
-- * 'assKey'
--
-- * 'assId'
--
-- * 'assPageToken'
--
-- * 'assOAuthToken'
--
-- * 'assMaxResults'
--
-- * 'assFields'
assetsParentsList'
    :: Text -- ^ 'id'
    -> AssetsParentsList'
assetsParentsList' pAssId_ =
    AssetsParentsList'
    { _assQuotaUser = Nothing
    , _assPrettyPrint = True
    , _assUserIP = Nothing
    , _assKey = Nothing
    , _assId = pAssId_
    , _assPageToken = Nothing
    , _assOAuthToken = Nothing
    , _assMaxResults = Nothing
    , _assFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
assQuotaUser :: Lens' AssetsParentsList' (Maybe Text)
assQuotaUser
  = lens _assQuotaUser (\ s a -> s{_assQuotaUser = a})

-- | Returns response with indentations and line breaks.
assPrettyPrint :: Lens' AssetsParentsList' Bool
assPrettyPrint
  = lens _assPrettyPrint
      (\ s a -> s{_assPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
assUserIP :: Lens' AssetsParentsList' (Maybe Text)
assUserIP
  = lens _assUserIP (\ s a -> s{_assUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
assKey :: Lens' AssetsParentsList' (Maybe AuthKey)
assKey = lens _assKey (\ s a -> s{_assKey = a})

-- | The ID of the asset whose parents will be listed.
assId :: Lens' AssetsParentsList' Text
assId = lens _assId (\ s a -> s{_assId = a})

-- | The continuation token, used to page through large result sets. To get
-- the next page of results, set this parameter to the value of
-- nextPageToken from the previous response.
assPageToken :: Lens' AssetsParentsList' (Maybe Text)
assPageToken
  = lens _assPageToken (\ s a -> s{_assPageToken = a})

-- | OAuth 2.0 token for the current user.
assOAuthToken :: Lens' AssetsParentsList' (Maybe OAuthToken)
assOAuthToken
  = lens _assOAuthToken
      (\ s a -> s{_assOAuthToken = a})

-- | The maximum number of items to include in a single response page. The
-- maximum supported value is 50.
assMaxResults :: Lens' AssetsParentsList' (Maybe Word32)
assMaxResults
  = lens _assMaxResults
      (\ s a -> s{_assMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
assFields :: Lens' AssetsParentsList' (Maybe Text)
assFields
  = lens _assFields (\ s a -> s{_assFields = a})

instance GoogleAuth AssetsParentsList' where
        _AuthKey = assKey . _Just
        _AuthToken = assOAuthToken . _Just

instance GoogleRequest AssetsParentsList' where
        type Rs AssetsParentsList' = ParentsListResponse
        request = requestWith mapsEngineRequest
        requestWith rq AssetsParentsList'{..}
          = go _assId _assPageToken _assMaxResults
              _assQuotaUser
              (Just _assPrettyPrint)
              _assUserIP
              _assFields
              _assKey
              _assOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy AssetsParentsListResource)
                      rq
