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
-- Module      : Network.Google.Resource.Compute.Autoscalers.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of autoscaler resources contained within the
-- specified zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeAutoscalersList@.
module Network.Google.Resource.Compute.Autoscalers.List
    (
    -- * REST Resource
      AutoscalersListResource

    -- * Creating a Request
    , autoscalersList'
    , AutoscalersList'

    -- * Request Lenses
    , aQuotaUser
    , aPrettyPrint
    , aProject
    , aUserIP
    , aZone
    , aKey
    , aFilter
    , aPageToken
    , aOAuthToken
    , aMaxResults
    , aFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeAutoscalersList@ which the
-- 'AutoscalersList'' request conforms to.
type AutoscalersListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "autoscalers" :>
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
                                 Get '[JSON] AutoscalerList

-- | Retrieves the list of autoscaler resources contained within the
-- specified zone.
--
-- /See:/ 'autoscalersList'' smart constructor.
data AutoscalersList' = AutoscalersList'
    { _aQuotaUser   :: !(Maybe Text)
    , _aPrettyPrint :: !Bool
    , _aProject     :: !Text
    , _aUserIP      :: !(Maybe Text)
    , _aZone        :: !Text
    , _aKey         :: !(Maybe Key)
    , _aFilter      :: !(Maybe Text)
    , _aPageToken   :: !(Maybe Text)
    , _aOAuthToken  :: !(Maybe OAuthToken)
    , _aMaxResults  :: !Word32
    , _aFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aQuotaUser'
--
-- * 'aPrettyPrint'
--
-- * 'aProject'
--
-- * 'aUserIP'
--
-- * 'aZone'
--
-- * 'aKey'
--
-- * 'aFilter'
--
-- * 'aPageToken'
--
-- * 'aOAuthToken'
--
-- * 'aMaxResults'
--
-- * 'aFields'
autoscalersList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> AutoscalersList'
autoscalersList' pAProject_ pAZone_ =
    AutoscalersList'
    { _aQuotaUser = Nothing
    , _aPrettyPrint = True
    , _aProject = pAProject_
    , _aUserIP = Nothing
    , _aZone = pAZone_
    , _aKey = Nothing
    , _aFilter = Nothing
    , _aPageToken = Nothing
    , _aOAuthToken = Nothing
    , _aMaxResults = 500
    , _aFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
aQuotaUser :: Lens' AutoscalersList' (Maybe Text)
aQuotaUser
  = lens _aQuotaUser (\ s a -> s{_aQuotaUser = a})

-- | Returns response with indentations and line breaks.
aPrettyPrint :: Lens' AutoscalersList' Bool
aPrettyPrint
  = lens _aPrettyPrint (\ s a -> s{_aPrettyPrint = a})

-- | Name of the project scoping this request.
aProject :: Lens' AutoscalersList' Text
aProject = lens _aProject (\ s a -> s{_aProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
aUserIP :: Lens' AutoscalersList' (Maybe Text)
aUserIP = lens _aUserIP (\ s a -> s{_aUserIP = a})

-- | Name of the zone scoping this request.
aZone :: Lens' AutoscalersList' Text
aZone = lens _aZone (\ s a -> s{_aZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
aKey :: Lens' AutoscalersList' (Maybe Key)
aKey = lens _aKey (\ s a -> s{_aKey = a})

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
aFilter :: Lens' AutoscalersList' (Maybe Text)
aFilter = lens _aFilter (\ s a -> s{_aFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
aPageToken :: Lens' AutoscalersList' (Maybe Text)
aPageToken
  = lens _aPageToken (\ s a -> s{_aPageToken = a})

-- | OAuth 2.0 token for the current user.
aOAuthToken :: Lens' AutoscalersList' (Maybe OAuthToken)
aOAuthToken
  = lens _aOAuthToken (\ s a -> s{_aOAuthToken = a})

-- | Maximum count of results to be returned.
aMaxResults :: Lens' AutoscalersList' Word32
aMaxResults
  = lens _aMaxResults (\ s a -> s{_aMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
aFields :: Lens' AutoscalersList' (Maybe Text)
aFields = lens _aFields (\ s a -> s{_aFields = a})

instance GoogleAuth AutoscalersList' where
        authKey = aKey . _Just
        authToken = aOAuthToken . _Just

instance GoogleRequest AutoscalersList' where
        type Rs AutoscalersList' = AutoscalerList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersList'{..}
          = go _aProject _aZone _aFilter _aPageToken
              (Just _aMaxResults)
              _aQuotaUser
              (Just _aPrettyPrint)
              _aUserIP
              _aFields
              _aKey
              _aOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersListResource)
                      r
                      u
