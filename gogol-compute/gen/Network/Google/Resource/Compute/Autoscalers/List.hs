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
    , autQuotaUser
    , autPrettyPrint
    , autProject
    , autUserIP
    , autZone
    , autKey
    , autFilter
    , autPageToken
    , autOAuthToken
    , autMaxResults
    , autFields
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
    { _autQuotaUser   :: !(Maybe Text)
    , _autPrettyPrint :: !Bool
    , _autProject     :: !Text
    , _autUserIP      :: !(Maybe Text)
    , _autZone        :: !Text
    , _autKey         :: !(Maybe Key)
    , _autFilter      :: !(Maybe Text)
    , _autPageToken   :: !(Maybe Text)
    , _autOAuthToken  :: !(Maybe OAuthToken)
    , _autMaxResults  :: !Word32
    , _autFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'AutoscalersList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'autQuotaUser'
--
-- * 'autPrettyPrint'
--
-- * 'autProject'
--
-- * 'autUserIP'
--
-- * 'autZone'
--
-- * 'autKey'
--
-- * 'autFilter'
--
-- * 'autPageToken'
--
-- * 'autOAuthToken'
--
-- * 'autMaxResults'
--
-- * 'autFields'
autoscalersList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> AutoscalersList'
autoscalersList' pAutProject_ pAutZone_ =
    AutoscalersList'
    { _autQuotaUser = Nothing
    , _autPrettyPrint = True
    , _autProject = pAutProject_
    , _autUserIP = Nothing
    , _autZone = pAutZone_
    , _autKey = Nothing
    , _autFilter = Nothing
    , _autPageToken = Nothing
    , _autOAuthToken = Nothing
    , _autMaxResults = 500
    , _autFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
autQuotaUser :: Lens' AutoscalersList' (Maybe Text)
autQuotaUser
  = lens _autQuotaUser (\ s a -> s{_autQuotaUser = a})

-- | Returns response with indentations and line breaks.
autPrettyPrint :: Lens' AutoscalersList' Bool
autPrettyPrint
  = lens _autPrettyPrint
      (\ s a -> s{_autPrettyPrint = a})

-- | Name of the project scoping this request.
autProject :: Lens' AutoscalersList' Text
autProject
  = lens _autProject (\ s a -> s{_autProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
autUserIP :: Lens' AutoscalersList' (Maybe Text)
autUserIP
  = lens _autUserIP (\ s a -> s{_autUserIP = a})

-- | Name of the zone scoping this request.
autZone :: Lens' AutoscalersList' Text
autZone = lens _autZone (\ s a -> s{_autZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
autKey :: Lens' AutoscalersList' (Maybe Key)
autKey = lens _autKey (\ s a -> s{_autKey = a})

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
autFilter :: Lens' AutoscalersList' (Maybe Text)
autFilter
  = lens _autFilter (\ s a -> s{_autFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
autPageToken :: Lens' AutoscalersList' (Maybe Text)
autPageToken
  = lens _autPageToken (\ s a -> s{_autPageToken = a})

-- | OAuth 2.0 token for the current user.
autOAuthToken :: Lens' AutoscalersList' (Maybe OAuthToken)
autOAuthToken
  = lens _autOAuthToken
      (\ s a -> s{_autOAuthToken = a})

-- | Maximum count of results to be returned.
autMaxResults :: Lens' AutoscalersList' Word32
autMaxResults
  = lens _autMaxResults
      (\ s a -> s{_autMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
autFields :: Lens' AutoscalersList' (Maybe Text)
autFields
  = lens _autFields (\ s a -> s{_autFields = a})

instance GoogleAuth AutoscalersList' where
        authKey = autKey . _Just
        authToken = autOAuthToken . _Just

instance GoogleRequest AutoscalersList' where
        type Rs AutoscalersList' = AutoscalerList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u AutoscalersList'{..}
          = go _autProject _autZone _autFilter _autPageToken
              (Just _autMaxResults)
              _autQuotaUser
              (Just _autPrettyPrint)
              _autUserIP
              _autFields
              _autKey
              _autOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy AutoscalersListResource)
                      r
                      u
