{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE FlexibleInstances  #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of operation resources contained within the specified
-- project.
--
-- /See:/ <https://cloud.google.com/compute/docs/access/user-accounts/api/latest/ Cloud User Accounts API Reference> for @CloudUserAccountsGlobalAccountsOperationsList@.
module Network.Google.Resource.CloudUserAccounts.GlobalAccountsOperations.List
    (
    -- * REST Resource
      GlobalAccountsOperationsListResource

    -- * Creating a Request
    , globalAccountsOperationsList'
    , GlobalAccountsOperationsList'

    -- * Request Lenses
    , gaolQuotaUser
    , gaolPrettyPrint
    , gaolOrderBy
    , gaolProject
    , gaolUserIP
    , gaolKey
    , gaolFilter
    , gaolPageToken
    , gaolOAuthToken
    , gaolMaxResults
    , gaolFields
    ) where

import           Network.Google.Prelude
import           Network.Google.UserAccounts.Types

-- | A resource alias for @CloudUserAccountsGlobalAccountsOperationsList@ which the
-- 'GlobalAccountsOperationsList'' request conforms to.
type GlobalAccountsOperationsListResource =
     Capture "project" Text :>
       "global" :>
         "operations" :>
           QueryParam "orderBy" Text :>
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
                                 Get '[JSON] OperationList

-- | Retrieves the list of operation resources contained within the specified
-- project.
--
-- /See:/ 'globalAccountsOperationsList'' smart constructor.
data GlobalAccountsOperationsList' = GlobalAccountsOperationsList'
    { _gaolQuotaUser   :: !(Maybe Text)
    , _gaolPrettyPrint :: !Bool
    , _gaolOrderBy     :: !(Maybe Text)
    , _gaolProject     :: !Text
    , _gaolUserIP      :: !(Maybe Text)
    , _gaolKey         :: !(Maybe Key)
    , _gaolFilter      :: !(Maybe Text)
    , _gaolPageToken   :: !(Maybe Text)
    , _gaolOAuthToken  :: !(Maybe OAuthToken)
    , _gaolMaxResults  :: !Word32
    , _gaolFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalAccountsOperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gaolQuotaUser'
--
-- * 'gaolPrettyPrint'
--
-- * 'gaolOrderBy'
--
-- * 'gaolProject'
--
-- * 'gaolUserIP'
--
-- * 'gaolKey'
--
-- * 'gaolFilter'
--
-- * 'gaolPageToken'
--
-- * 'gaolOAuthToken'
--
-- * 'gaolMaxResults'
--
-- * 'gaolFields'
globalAccountsOperationsList'
    :: Text -- ^ 'project'
    -> GlobalAccountsOperationsList'
globalAccountsOperationsList' pGaolProject_ =
    GlobalAccountsOperationsList'
    { _gaolQuotaUser = Nothing
    , _gaolPrettyPrint = True
    , _gaolOrderBy = Nothing
    , _gaolProject = pGaolProject_
    , _gaolUserIP = Nothing
    , _gaolKey = Nothing
    , _gaolFilter = Nothing
    , _gaolPageToken = Nothing
    , _gaolOAuthToken = Nothing
    , _gaolMaxResults = 500
    , _gaolFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
gaolQuotaUser :: Lens' GlobalAccountsOperationsList' (Maybe Text)
gaolQuotaUser
  = lens _gaolQuotaUser
      (\ s a -> s{_gaolQuotaUser = a})

-- | Returns response with indentations and line breaks.
gaolPrettyPrint :: Lens' GlobalAccountsOperationsList' Bool
gaolPrettyPrint
  = lens _gaolPrettyPrint
      (\ s a -> s{_gaolPrettyPrint = a})

-- | Sorts list results by a certain order. By default, results are returned
-- in alphanumerical order based on the resource name. You can also sort
-- results in descending order based on the creation timestamp using
-- orderBy=\"creationTimestamp desc\". This sorts results based on the
-- creationTimestamp field in reverse chronological order (newest result
-- first). Use this to sort resources like operations so that the newest
-- operation is returned first. Currently, only sorting by name or
-- creationTimestamp desc is supported.
gaolOrderBy :: Lens' GlobalAccountsOperationsList' (Maybe Text)
gaolOrderBy
  = lens _gaolOrderBy (\ s a -> s{_gaolOrderBy = a})

-- | Project ID for this request.
gaolProject :: Lens' GlobalAccountsOperationsList' Text
gaolProject
  = lens _gaolProject (\ s a -> s{_gaolProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
gaolUserIP :: Lens' GlobalAccountsOperationsList' (Maybe Text)
gaolUserIP
  = lens _gaolUserIP (\ s a -> s{_gaolUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
gaolKey :: Lens' GlobalAccountsOperationsList' (Maybe Key)
gaolKey = lens _gaolKey (\ s a -> s{_gaolKey = a})

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
gaolFilter :: Lens' GlobalAccountsOperationsList' (Maybe Text)
gaolFilter
  = lens _gaolFilter (\ s a -> s{_gaolFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
gaolPageToken :: Lens' GlobalAccountsOperationsList' (Maybe Text)
gaolPageToken
  = lens _gaolPageToken
      (\ s a -> s{_gaolPageToken = a})

-- | OAuth 2.0 token for the current user.
gaolOAuthToken :: Lens' GlobalAccountsOperationsList' (Maybe OAuthToken)
gaolOAuthToken
  = lens _gaolOAuthToken
      (\ s a -> s{_gaolOAuthToken = a})

-- | Maximum count of results to be returned.
gaolMaxResults :: Lens' GlobalAccountsOperationsList' Word32
gaolMaxResults
  = lens _gaolMaxResults
      (\ s a -> s{_gaolMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
gaolFields :: Lens' GlobalAccountsOperationsList' (Maybe Text)
gaolFields
  = lens _gaolFields (\ s a -> s{_gaolFields = a})

instance GoogleAuth GlobalAccountsOperationsList'
         where
        authKey = gaolKey . _Just
        authToken = gaolOAuthToken . _Just

instance GoogleRequest GlobalAccountsOperationsList'
         where
        type Rs GlobalAccountsOperationsList' = OperationList
        request = requestWithRoute defReq userAccountsURL
        requestWithRoute r u
          GlobalAccountsOperationsList'{..}
          = go _gaolProject _gaolOrderBy _gaolFilter
              _gaolPageToken
              (Just _gaolMaxResults)
              _gaolQuotaUser
              (Just _gaolPrettyPrint)
              _gaolUserIP
              _gaolFields
              _gaolKey
              _gaolOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy GlobalAccountsOperationsListResource)
                      r
                      u
