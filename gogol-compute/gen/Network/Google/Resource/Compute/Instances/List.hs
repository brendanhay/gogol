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
-- Module      : Network.Google.Resource.Compute.Instances.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of instance resources contained within the specified
-- zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstancesList@.
module Network.Google.Resource.Compute.Instances.List
    (
    -- * REST Resource
      InstancesListResource

    -- * Creating a Request
    , instancesList'
    , InstancesList'

    -- * Request Lenses
    , illQuotaUser
    , illPrettyPrint
    , illProject
    , illUserIP
    , illZone
    , illKey
    , illFilter
    , illPageToken
    , illOAuthToken
    , illMaxResults
    , illFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstancesList@ which the
-- 'InstancesList'' request conforms to.
type InstancesListResource =
     Capture "project" Text :>
       "zones" :>
         Capture "zone" Text :>
           "instances" :>
             QueryParam "filter" Text :>
               QueryParam "pageToken" Text :>
                 QueryParam "maxResults" Word32 :>
                   QueryParam "quotaUser" Text :>
                     QueryParam "prettyPrint" Bool :>
                       QueryParam "userIp" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "key" AuthKey :>
                             QueryParam "oauth_token" OAuthToken :>
                               QueryParam "alt" AltJSON :>
                                 Get '[JSON] InstanceList

-- | Retrieves the list of instance resources contained within the specified
-- zone.
--
-- /See:/ 'instancesList'' smart constructor.
data InstancesList' = InstancesList'
    { _illQuotaUser   :: !(Maybe Text)
    , _illPrettyPrint :: !Bool
    , _illProject     :: !Text
    , _illUserIP      :: !(Maybe Text)
    , _illZone        :: !Text
    , _illKey         :: !(Maybe AuthKey)
    , _illFilter      :: !(Maybe Text)
    , _illPageToken   :: !(Maybe Text)
    , _illOAuthToken  :: !(Maybe OAuthToken)
    , _illMaxResults  :: !Word32
    , _illFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstancesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'illQuotaUser'
--
-- * 'illPrettyPrint'
--
-- * 'illProject'
--
-- * 'illUserIP'
--
-- * 'illZone'
--
-- * 'illKey'
--
-- * 'illFilter'
--
-- * 'illPageToken'
--
-- * 'illOAuthToken'
--
-- * 'illMaxResults'
--
-- * 'illFields'
instancesList'
    :: Text -- ^ 'project'
    -> Text -- ^ 'zone'
    -> InstancesList'
instancesList' pIllProject_ pIllZone_ =
    InstancesList'
    { _illQuotaUser = Nothing
    , _illPrettyPrint = True
    , _illProject = pIllProject_
    , _illUserIP = Nothing
    , _illZone = pIllZone_
    , _illKey = Nothing
    , _illFilter = Nothing
    , _illPageToken = Nothing
    , _illOAuthToken = Nothing
    , _illMaxResults = 500
    , _illFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
illQuotaUser :: Lens' InstancesList' (Maybe Text)
illQuotaUser
  = lens _illQuotaUser (\ s a -> s{_illQuotaUser = a})

-- | Returns response with indentations and line breaks.
illPrettyPrint :: Lens' InstancesList' Bool
illPrettyPrint
  = lens _illPrettyPrint
      (\ s a -> s{_illPrettyPrint = a})

-- | Project ID for this request.
illProject :: Lens' InstancesList' Text
illProject
  = lens _illProject (\ s a -> s{_illProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
illUserIP :: Lens' InstancesList' (Maybe Text)
illUserIP
  = lens _illUserIP (\ s a -> s{_illUserIP = a})

-- | The name of the zone for this request.
illZone :: Lens' InstancesList' Text
illZone = lens _illZone (\ s a -> s{_illZone = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
illKey :: Lens' InstancesList' (Maybe AuthKey)
illKey = lens _illKey (\ s a -> s{_illKey = a})

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
illFilter :: Lens' InstancesList' (Maybe Text)
illFilter
  = lens _illFilter (\ s a -> s{_illFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
illPageToken :: Lens' InstancesList' (Maybe Text)
illPageToken
  = lens _illPageToken (\ s a -> s{_illPageToken = a})

-- | OAuth 2.0 token for the current user.
illOAuthToken :: Lens' InstancesList' (Maybe OAuthToken)
illOAuthToken
  = lens _illOAuthToken
      (\ s a -> s{_illOAuthToken = a})

-- | Maximum count of results to be returned.
illMaxResults :: Lens' InstancesList' Word32
illMaxResults
  = lens _illMaxResults
      (\ s a -> s{_illMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
illFields :: Lens' InstancesList' (Maybe Text)
illFields
  = lens _illFields (\ s a -> s{_illFields = a})

instance GoogleAuth InstancesList' where
        authKey = illKey . _Just
        authToken = illOAuthToken . _Just

instance GoogleRequest InstancesList' where
        type Rs InstancesList' = InstanceList
        request = requestWith computeRequest
        requestWith rq InstancesList'{..}
          = go _illProject _illZone _illFilter _illPageToken
              (Just _illMaxResults)
              _illQuotaUser
              (Just _illPrettyPrint)
              _illUserIP
              _illFields
              _illKey
              _illOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy InstancesListResource)
                      rq
