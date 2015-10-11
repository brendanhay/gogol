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
-- Module      : Network.Google.Resource.Compute.GlobalOperations.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of Operation resources contained within the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeGlobalOperationsList@.
module Network.Google.Resource.Compute.GlobalOperations.List
    (
    -- * REST Resource
      GlobalOperationsListResource

    -- * Creating a Request
    , globalOperationsList'
    , GlobalOperationsList'

    -- * Request Lenses
    , golQuotaUser
    , golPrettyPrint
    , golProject
    , golUserIP
    , golKey
    , golFilter
    , golPageToken
    , golOAuthToken
    , golMaxResults
    , golFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeGlobalOperationsList@ method which the
-- 'GlobalOperationsList'' request conforms to.
type GlobalOperationsListResource =
     Capture "project" Text :>
       "global" :>
         "operations" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" AuthKey :>
                           Header "Authorization" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] OperationList

-- | Retrieves the list of Operation resources contained within the specified
-- project.
--
-- /See:/ 'globalOperationsList'' smart constructor.
data GlobalOperationsList' = GlobalOperationsList'
    { _golQuotaUser   :: !(Maybe Text)
    , _golPrettyPrint :: !Bool
    , _golProject     :: !Text
    , _golUserIP      :: !(Maybe Text)
    , _golKey         :: !(Maybe AuthKey)
    , _golFilter      :: !(Maybe Text)
    , _golPageToken   :: !(Maybe Text)
    , _golOAuthToken  :: !(Maybe OAuthToken)
    , _golMaxResults  :: !Word32
    , _golFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'GlobalOperationsList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'golQuotaUser'
--
-- * 'golPrettyPrint'
--
-- * 'golProject'
--
-- * 'golUserIP'
--
-- * 'golKey'
--
-- * 'golFilter'
--
-- * 'golPageToken'
--
-- * 'golOAuthToken'
--
-- * 'golMaxResults'
--
-- * 'golFields'
globalOperationsList'
    :: Text -- ^ 'project'
    -> GlobalOperationsList'
globalOperationsList' pGolProject_ =
    GlobalOperationsList'
    { _golQuotaUser = Nothing
    , _golPrettyPrint = True
    , _golProject = pGolProject_
    , _golUserIP = Nothing
    , _golKey = Nothing
    , _golFilter = Nothing
    , _golPageToken = Nothing
    , _golOAuthToken = Nothing
    , _golMaxResults = 500
    , _golFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
golQuotaUser :: Lens' GlobalOperationsList' (Maybe Text)
golQuotaUser
  = lens _golQuotaUser (\ s a -> s{_golQuotaUser = a})

-- | Returns response with indentations and line breaks.
golPrettyPrint :: Lens' GlobalOperationsList' Bool
golPrettyPrint
  = lens _golPrettyPrint
      (\ s a -> s{_golPrettyPrint = a})

-- | Project ID for this request.
golProject :: Lens' GlobalOperationsList' Text
golProject
  = lens _golProject (\ s a -> s{_golProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
golUserIP :: Lens' GlobalOperationsList' (Maybe Text)
golUserIP
  = lens _golUserIP (\ s a -> s{_golUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
golKey :: Lens' GlobalOperationsList' (Maybe AuthKey)
golKey = lens _golKey (\ s a -> s{_golKey = a})

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
golFilter :: Lens' GlobalOperationsList' (Maybe Text)
golFilter
  = lens _golFilter (\ s a -> s{_golFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
golPageToken :: Lens' GlobalOperationsList' (Maybe Text)
golPageToken
  = lens _golPageToken (\ s a -> s{_golPageToken = a})

-- | OAuth 2.0 token for the current user.
golOAuthToken :: Lens' GlobalOperationsList' (Maybe OAuthToken)
golOAuthToken
  = lens _golOAuthToken
      (\ s a -> s{_golOAuthToken = a})

-- | Maximum count of results to be returned.
golMaxResults :: Lens' GlobalOperationsList' Word32
golMaxResults
  = lens _golMaxResults
      (\ s a -> s{_golMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
golFields :: Lens' GlobalOperationsList' (Maybe Text)
golFields
  = lens _golFields (\ s a -> s{_golFields = a})

instance GoogleAuth GlobalOperationsList' where
        _AuthKey = golKey . _Just
        _AuthToken = golOAuthToken . _Just

instance GoogleRequest GlobalOperationsList' where
        type Rs GlobalOperationsList' = OperationList
        request = requestWith computeRequest
        requestWith rq GlobalOperationsList'{..}
          = go _golProject _golFilter _golPageToken
              (Just _golMaxResults)
              _golQuotaUser
              (Just _golPrettyPrint)
              _golUserIP
              _golFields
              _golKey
              _golOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild
                      (Proxy :: Proxy GlobalOperationsListResource)
                      rq
