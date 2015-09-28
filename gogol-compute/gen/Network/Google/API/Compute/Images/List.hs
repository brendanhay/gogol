{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Images.List
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Retrieves the list of image resources available to the specified
-- project.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.list@.
module Network.Google.API.Compute.Images.List
    (
    -- * REST Resource
      ImagesListAPI

    -- * Creating a Request
    , imagesList'
    , ImagesList'

    -- * Request Lenses
    , illQuotaUser
    , illPrettyPrint
    , illProject
    , illUserIp
    , illKey
    , illFilter
    , illPageToken
    , illOauthToken
    , illMaxResults
    , illFields
    , illAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.images.list which the
-- 'ImagesList'' request conforms to.
type ImagesListAPI =
     Capture "project" Text :>
       "global" :>
         "images" :>
           QueryParam "quotaUser" Text :>
             QueryParam "prettyPrint" Bool :>
               QueryParam "userIp" Text :>
                 QueryParam "key" Text :>
                   QueryParam "filter" Text :>
                     QueryParam "pageToken" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "maxResults" Word32 :>
                           QueryParam "fields" Text :>
                             QueryParam "alt" Alt :> Get '[JSON] ImageList

-- | Retrieves the list of image resources available to the specified
-- project.
--
-- /See:/ 'imagesList'' smart constructor.
data ImagesList' = ImagesList'
    { _illQuotaUser   :: !(Maybe Text)
    , _illPrettyPrint :: !Bool
    , _illProject     :: !Text
    , _illUserIp      :: !(Maybe Text)
    , _illKey         :: !(Maybe Text)
    , _illFilter      :: !(Maybe Text)
    , _illPageToken   :: !(Maybe Text)
    , _illOauthToken  :: !(Maybe Text)
    , _illMaxResults  :: !Word32
    , _illFields      :: !(Maybe Text)
    , _illAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesList'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'illQuotaUser'
--
-- * 'illPrettyPrint'
--
-- * 'illProject'
--
-- * 'illUserIp'
--
-- * 'illKey'
--
-- * 'illFilter'
--
-- * 'illPageToken'
--
-- * 'illOauthToken'
--
-- * 'illMaxResults'
--
-- * 'illFields'
--
-- * 'illAlt'
imagesList'
    :: Text -- ^ 'project'
    -> ImagesList'
imagesList' pIllProject_ =
    ImagesList'
    { _illQuotaUser = Nothing
    , _illPrettyPrint = True
    , _illProject = pIllProject_
    , _illUserIp = Nothing
    , _illKey = Nothing
    , _illFilter = Nothing
    , _illPageToken = Nothing
    , _illOauthToken = Nothing
    , _illMaxResults = 500
    , _illFields = Nothing
    , _illAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
illQuotaUser :: Lens' ImagesList' (Maybe Text)
illQuotaUser
  = lens _illQuotaUser (\ s a -> s{_illQuotaUser = a})

-- | Returns response with indentations and line breaks.
illPrettyPrint :: Lens' ImagesList' Bool
illPrettyPrint
  = lens _illPrettyPrint
      (\ s a -> s{_illPrettyPrint = a})

-- | Project ID for this request.
illProject :: Lens' ImagesList' Text
illProject
  = lens _illProject (\ s a -> s{_illProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
illUserIp :: Lens' ImagesList' (Maybe Text)
illUserIp
  = lens _illUserIp (\ s a -> s{_illUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
illKey :: Lens' ImagesList' (Maybe Text)
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
illFilter :: Lens' ImagesList' (Maybe Text)
illFilter
  = lens _illFilter (\ s a -> s{_illFilter = a})

-- | Specifies a page token to use. Use this parameter if you want to list
-- the next page of results. Set pageToken to the nextPageToken returned by
-- a previous list request.
illPageToken :: Lens' ImagesList' (Maybe Text)
illPageToken
  = lens _illPageToken (\ s a -> s{_illPageToken = a})

-- | OAuth 2.0 token for the current user.
illOauthToken :: Lens' ImagesList' (Maybe Text)
illOauthToken
  = lens _illOauthToken
      (\ s a -> s{_illOauthToken = a})

-- | Maximum count of results to be returned.
illMaxResults :: Lens' ImagesList' Word32
illMaxResults
  = lens _illMaxResults
      (\ s a -> s{_illMaxResults = a})

-- | Selector specifying which fields to include in a partial response.
illFields :: Lens' ImagesList' (Maybe Text)
illFields
  = lens _illFields (\ s a -> s{_illFields = a})

-- | Data format for the response.
illAlt :: Lens' ImagesList' Alt
illAlt = lens _illAlt (\ s a -> s{_illAlt = a})

instance GoogleRequest ImagesList' where
        type Rs ImagesList' = ImageList
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesList'{..}
          = go _illQuotaUser (Just _illPrettyPrint) _illProject
              _illUserIp
              _illKey
              _illFilter
              _illPageToken
              _illOauthToken
              (Just _illMaxResults)
              _illFields
              (Just _illAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ImagesListAPI) r u
