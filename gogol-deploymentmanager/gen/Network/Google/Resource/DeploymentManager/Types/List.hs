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
-- Module      : Network.Google.Resource.DeploymentManager.Types.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Lists all resource types for Deployment Manager.
--
-- /See:/ <https://developers.google.com/deployment-manager/ Google Cloud Deployment Manager API Reference> for @DeploymentManagerTypesList@.
module Network.Google.Resource.DeploymentManager.Types.List
    (
    -- * REST Resource
      TypesListResource

    -- * Creating a Request
    , typesList'
    , TypesList'

    -- * Request Lenses
    , tlQuotaUser
    , tlPrettyPrint
    , tlProject
    , tlUserIP
    , tlKey
    , tlFilter
    , tlPageToken
    , tlOAuthToken
    , tlMaxResults
    , tlFields
    ) where

import           Network.Google.DeploymentManager.Types
import           Network.Google.Prelude

-- | A resource alias for @DeploymentManagerTypesList@ which the
-- 'TypesList'' request conforms to.
type TypesListResource =
     Capture "project" Text :>
       "global" :>
         "types" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] TypesListResponse

-- | Lists all resource types for Deployment Manager.
--
-- /See:/ 'typesList'' smart constructor.
data TypesList' = TypesList'
    { _tlQuotaUser   :: !(Maybe Text)
    , _tlPrettyPrint :: !Bool
    , _tlProject     :: !Text
    , _tlUserIP      :: !(Maybe Text)
    , _tlKey         :: !(Maybe Key)
    , _tlFilter      :: !(Maybe Text)
    , _tlPageToken   :: !(Maybe Text)
    , _tlOAuthToken  :: !(Maybe OAuthToken)
    , _tlMaxResults  :: !Word32
    , _tlFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'TypesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'tlQuotaUser'
--
-- * 'tlPrettyPrint'
--
-- * 'tlProject'
--
-- * 'tlUserIP'
--
-- * 'tlKey'
--
-- * 'tlFilter'
--
-- * 'tlPageToken'
--
-- * 'tlOAuthToken'
--
-- * 'tlMaxResults'
--
-- * 'tlFields'
typesList'
    :: Text -- ^ 'project'
    -> TypesList'
typesList' pTlProject_ =
    TypesList'
    { _tlQuotaUser = Nothing
    , _tlPrettyPrint = True
    , _tlProject = pTlProject_
    , _tlUserIP = Nothing
    , _tlKey = Nothing
    , _tlFilter = Nothing
    , _tlPageToken = Nothing
    , _tlOAuthToken = Nothing
    , _tlMaxResults = 500
    , _tlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
tlQuotaUser :: Lens' TypesList' (Maybe Text)
tlQuotaUser
  = lens _tlQuotaUser (\ s a -> s{_tlQuotaUser = a})

-- | Returns response with indentations and line breaks.
tlPrettyPrint :: Lens' TypesList' Bool
tlPrettyPrint
  = lens _tlPrettyPrint
      (\ s a -> s{_tlPrettyPrint = a})

-- | The project ID for this request.
tlProject :: Lens' TypesList' Text
tlProject
  = lens _tlProject (\ s a -> s{_tlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
tlUserIP :: Lens' TypesList' (Maybe Text)
tlUserIP = lens _tlUserIP (\ s a -> s{_tlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
tlKey :: Lens' TypesList' (Maybe Key)
tlKey = lens _tlKey (\ s a -> s{_tlKey = a})

-- | Sets a filter expression for filtering listed resources, in the form
-- filter={expression}. Your {expression} must be in the format: FIELD_NAME
-- COMPARISON_STRING LITERAL_STRING. The FIELD_NAME is the name of the
-- field you want to compare. Only atomic field types are supported
-- (string, number, boolean). The COMPARISON_STRING must be either eq
-- (equals) or ne (not equals). The LITERAL_STRING is the string value to
-- filter to. The literal value must be valid for the type of field
-- (string, number, boolean). For string fields, the literal value is
-- interpreted as a regular expression using RE2 syntax. The literal value
-- must match the entire field. For example, filter=name ne
-- example-instance.
tlFilter :: Lens' TypesList' (Maybe Text)
tlFilter = lens _tlFilter (\ s a -> s{_tlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
tlPageToken :: Lens' TypesList' (Maybe Text)
tlPageToken
  = lens _tlPageToken (\ s a -> s{_tlPageToken = a})

-- | OAuth 2.0 token for the current user.
tlOAuthToken :: Lens' TypesList' (Maybe OAuthToken)
tlOAuthToken
  = lens _tlOAuthToken (\ s a -> s{_tlOAuthToken = a})

-- | Maximum count of results to be returned.
tlMaxResults :: Lens' TypesList' Word32
tlMaxResults
  = lens _tlMaxResults (\ s a -> s{_tlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
tlFields :: Lens' TypesList' (Maybe Text)
tlFields = lens _tlFields (\ s a -> s{_tlFields = a})

instance GoogleAuth TypesList' where
        authKey = tlKey . _Just
        authToken = tlOAuthToken . _Just

instance GoogleRequest TypesList' where
        type Rs TypesList' = TypesListResponse
        request
          = requestWithRoute defReq deploymentManagerURL
        requestWithRoute r u TypesList'{..}
          = go _tlProject _tlFilter _tlPageToken
              (Just _tlMaxResults)
              _tlQuotaUser
              (Just _tlPrettyPrint)
              _tlUserIP
              _tlFields
              _tlKey
              _tlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy TypesListResource)
                      r
                      u
