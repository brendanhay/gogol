{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.InstanceTemplates.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves a list of instance templates that are contained within the
-- specified project and zone.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeInstanceTemplatesList@.
module Network.Google.Resource.Compute.InstanceTemplates.List
    (
    -- * REST Resource
      InstanceTemplatesListResource

    -- * Creating a Request
    , instanceTemplatesList'
    , InstanceTemplatesList'

    -- * Request Lenses
    , itlQuotaUser
    , itlPrettyPrint
    , itlProject
    , itlUserIP
    , itlKey
    , itlFilter
    , itlPageToken
    , itlOAuthToken
    , itlMaxResults
    , itlFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceTemplatesList@ which the
-- 'InstanceTemplatesList'' request conforms to.
type InstanceTemplatesListResource =
     Capture "project" Text :>
       "global" :>
         "instanceTemplates" :>
           QueryParam "filter" Text :>
             QueryParam "maxResults" Word32 :>
               QueryParam "pageToken" Text :>
                 QueryParam "quotaUser" Text :>
                   QueryParam "prettyPrint" Bool :>
                     QueryParam "userIp" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "key" Key :>
                           QueryParam "oauth_token" OAuthToken :>
                             QueryParam "alt" AltJSON :>
                               Get '[JSON] InstanceTemplateList

-- | Retrieves a list of instance templates that are contained within the
-- specified project and zone.
--
-- /See:/ 'instanceTemplatesList'' smart constructor.
data InstanceTemplatesList' = InstanceTemplatesList'
    { _itlQuotaUser   :: !(Maybe Text)
    , _itlPrettyPrint :: !Bool
    , _itlProject     :: !Text
    , _itlUserIP      :: !(Maybe Text)
    , _itlKey         :: !(Maybe Key)
    , _itlFilter      :: !(Maybe Text)
    , _itlPageToken   :: !(Maybe Text)
    , _itlOAuthToken  :: !(Maybe OAuthToken)
    , _itlMaxResults  :: !Word32
    , _itlFields      :: !(Maybe Text)
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'InstanceTemplatesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'itlQuotaUser'
--
-- * 'itlPrettyPrint'
--
-- * 'itlProject'
--
-- * 'itlUserIP'
--
-- * 'itlKey'
--
-- * 'itlFilter'
--
-- * 'itlPageToken'
--
-- * 'itlOAuthToken'
--
-- * 'itlMaxResults'
--
-- * 'itlFields'
instanceTemplatesList'
    :: Text -- ^ 'project'
    -> InstanceTemplatesList'
instanceTemplatesList' pItlProject_ =
    InstanceTemplatesList'
    { _itlQuotaUser = Nothing
    , _itlPrettyPrint = True
    , _itlProject = pItlProject_
    , _itlUserIP = Nothing
    , _itlKey = Nothing
    , _itlFilter = Nothing
    , _itlPageToken = Nothing
    , _itlOAuthToken = Nothing
    , _itlMaxResults = 500
    , _itlFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
itlQuotaUser :: Lens' InstanceTemplatesList' (Maybe Text)
itlQuotaUser
  = lens _itlQuotaUser (\ s a -> s{_itlQuotaUser = a})

-- | Returns response with indentations and line breaks.
itlPrettyPrint :: Lens' InstanceTemplatesList' Bool
itlPrettyPrint
  = lens _itlPrettyPrint
      (\ s a -> s{_itlPrettyPrint = a})

-- | The project ID for this request.
itlProject :: Lens' InstanceTemplatesList' Text
itlProject
  = lens _itlProject (\ s a -> s{_itlProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
itlUserIP :: Lens' InstanceTemplatesList' (Maybe Text)
itlUserIP
  = lens _itlUserIP (\ s a -> s{_itlUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
itlKey :: Lens' InstanceTemplatesList' (Maybe Key)
itlKey = lens _itlKey (\ s a -> s{_itlKey = a})

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
itlFilter :: Lens' InstanceTemplatesList' (Maybe Text)
itlFilter
  = lens _itlFilter (\ s a -> s{_itlFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
itlPageToken :: Lens' InstanceTemplatesList' (Maybe Text)
itlPageToken
  = lens _itlPageToken (\ s a -> s{_itlPageToken = a})

-- | OAuth 2.0 token for the current user.
itlOAuthToken :: Lens' InstanceTemplatesList' (Maybe OAuthToken)
itlOAuthToken
  = lens _itlOAuthToken
      (\ s a -> s{_itlOAuthToken = a})

-- | Maximum count of results to be returned.
itlMaxResults :: Lens' InstanceTemplatesList' Word32
itlMaxResults
  = lens _itlMaxResults
      (\ s a -> s{_itlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
itlFields :: Lens' InstanceTemplatesList' (Maybe Text)
itlFields
  = lens _itlFields (\ s a -> s{_itlFields = a})

instance GoogleAuth InstanceTemplatesList' where
        authKey = itlKey . _Just
        authToken = itlOAuthToken . _Just

instance GoogleRequest InstanceTemplatesList' where
        type Rs InstanceTemplatesList' = InstanceTemplateList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceTemplatesList'{..}
          = go _itlFilter (Just _itlMaxResults) _itlPageToken
              _itlProject
              _itlQuotaUser
              (Just _itlPrettyPrint)
              _itlUserIP
              _itlFields
              _itlKey
              _itlOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceTemplatesListResource)
                      r
                      u
