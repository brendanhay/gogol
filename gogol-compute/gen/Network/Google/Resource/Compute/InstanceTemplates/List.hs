{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
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
module Compute.InstanceTemplates.List
    (
    -- * REST Resource
      InstanceTemplatesListAPI

    -- * Creating a Request
    , instanceTemplatesList
    , InstanceTemplatesList

    -- * Request Lenses
    , itlQuotaUser
    , itlPrettyPrint
    , itlProject
    , itlUserIp
    , itlKey
    , itlFilter
    , itlPageToken
    , itlOauthToken
    , itlMaxResults
    , itlFields
    , itlAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeInstanceTemplatesList@ which the
-- 'InstanceTemplatesList' request conforms to.
type InstanceTemplatesListAPI =
     Capture "project" Text :>
       "global" :>
         "instanceTemplates" :>
           QueryParam "filter" Text :>
             QueryParam "pageToken" Text :>
               QueryParam "maxResults" Word32 :>
                 Get '[JSON] InstanceTemplateList

-- | Retrieves a list of instance templates that are contained within the
-- specified project and zone.
--
-- /See:/ 'instanceTemplatesList' smart constructor.
data InstanceTemplatesList = InstanceTemplatesList
    { _itlQuotaUser   :: !(Maybe Text)
    , _itlPrettyPrint :: !Bool
    , _itlProject     :: !Text
    , _itlUserIp      :: !(Maybe Text)
    , _itlKey         :: !(Maybe Text)
    , _itlFilter      :: !(Maybe Text)
    , _itlPageToken   :: !(Maybe Text)
    , _itlOauthToken  :: !(Maybe Text)
    , _itlMaxResults  :: !Word32
    , _itlFields      :: !(Maybe Text)
    , _itlAlt         :: !Text
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
-- * 'itlUserIp'
--
-- * 'itlKey'
--
-- * 'itlFilter'
--
-- * 'itlPageToken'
--
-- * 'itlOauthToken'
--
-- * 'itlMaxResults'
--
-- * 'itlFields'
--
-- * 'itlAlt'
instanceTemplatesList
    :: Text -- ^ 'project'
    -> InstanceTemplatesList
instanceTemplatesList pItlProject_ =
    InstanceTemplatesList
    { _itlQuotaUser = Nothing
    , _itlPrettyPrint = True
    , _itlProject = pItlProject_
    , _itlUserIp = Nothing
    , _itlKey = Nothing
    , _itlFilter = Nothing
    , _itlPageToken = Nothing
    , _itlOauthToken = Nothing
    , _itlMaxResults = 500
    , _itlFields = Nothing
    , _itlAlt = "json"
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
itlUserIp :: Lens' InstanceTemplatesList' (Maybe Text)
itlUserIp
  = lens _itlUserIp (\ s a -> s{_itlUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
itlKey :: Lens' InstanceTemplatesList' (Maybe Text)
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
itlOauthToken :: Lens' InstanceTemplatesList' (Maybe Text)
itlOauthToken
  = lens _itlOauthToken
      (\ s a -> s{_itlOauthToken = a})

-- | Maximum count of results to be returned.
itlMaxResults :: Lens' InstanceTemplatesList' Word32
itlMaxResults
  = lens _itlMaxResults
      (\ s a -> s{_itlMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
itlFields :: Lens' InstanceTemplatesList' (Maybe Text)
itlFields
  = lens _itlFields (\ s a -> s{_itlFields = a})

-- | Data format for the response.
itlAlt :: Lens' InstanceTemplatesList' Text
itlAlt = lens _itlAlt (\ s a -> s{_itlAlt = a})

instance GoogleRequest InstanceTemplatesList' where
        type Rs InstanceTemplatesList' = InstanceTemplateList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u InstanceTemplatesList{..}
          = go _itlQuotaUser _itlPrettyPrint _itlProject
              _itlUserIp
              _itlKey
              _itlFilter
              _itlPageToken
              _itlOauthToken
              (Just _itlMaxResults)
              _itlFields
              _itlAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy InstanceTemplatesListAPI)
                      r
                      u
