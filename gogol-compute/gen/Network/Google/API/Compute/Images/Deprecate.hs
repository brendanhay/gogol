{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Images.Deprecate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.deprecate@.
module Network.Google.API.Compute.Images.Deprecate
    (
    -- * REST Resource
      ImagesDeprecateAPI

    -- * Creating a Request
    , imagesDeprecate'
    , ImagesDeprecate'

    -- * Request Lenses
    , imamQuotaUser
    , imamImage
    , imamPrettyPrint
    , imamProject
    , imamUserIp
    , imamKey
    , imamOauthToken
    , imamFields
    , imamAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.images.deprecate which the
-- 'ImagesDeprecate'' request conforms to.
type ImagesDeprecateAPI =
     Capture "project" Text :>
       "global" :>
         "images" :>
           Capture "image" Text :>
             "deprecate" :>
               QueryParam "quotaUser" Text :>
                 QueryParam "prettyPrint" Bool :>
                   QueryParam "userIp" Text :>
                     QueryParam "key" Text :>
                       QueryParam "oauth_token" Text :>
                         QueryParam "fields" Text :>
                           QueryParam "alt" Alt :> Post '[JSON] Operation

-- | Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
--
-- /See:/ 'imagesDeprecate'' smart constructor.
data ImagesDeprecate' = ImagesDeprecate'
    { _imamQuotaUser   :: !(Maybe Text)
    , _imamImage       :: !Text
    , _imamPrettyPrint :: !Bool
    , _imamProject     :: !Text
    , _imamUserIp      :: !(Maybe Text)
    , _imamKey         :: !(Maybe Text)
    , _imamOauthToken  :: !(Maybe Text)
    , _imamFields      :: !(Maybe Text)
    , _imamAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDeprecate'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imamQuotaUser'
--
-- * 'imamImage'
--
-- * 'imamPrettyPrint'
--
-- * 'imamProject'
--
-- * 'imamUserIp'
--
-- * 'imamKey'
--
-- * 'imamOauthToken'
--
-- * 'imamFields'
--
-- * 'imamAlt'
imagesDeprecate'
    :: Text -- ^ 'image'
    -> Text -- ^ 'project'
    -> ImagesDeprecate'
imagesDeprecate' pImamImage_ pImamProject_ =
    ImagesDeprecate'
    { _imamQuotaUser = Nothing
    , _imamImage = pImamImage_
    , _imamPrettyPrint = True
    , _imamProject = pImamProject_
    , _imamUserIp = Nothing
    , _imamKey = Nothing
    , _imamOauthToken = Nothing
    , _imamFields = Nothing
    , _imamAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
imamQuotaUser :: Lens' ImagesDeprecate' (Maybe Text)
imamQuotaUser
  = lens _imamQuotaUser
      (\ s a -> s{_imamQuotaUser = a})

-- | Image name.
imamImage :: Lens' ImagesDeprecate' Text
imamImage
  = lens _imamImage (\ s a -> s{_imamImage = a})

-- | Returns response with indentations and line breaks.
imamPrettyPrint :: Lens' ImagesDeprecate' Bool
imamPrettyPrint
  = lens _imamPrettyPrint
      (\ s a -> s{_imamPrettyPrint = a})

-- | Project ID for this request.
imamProject :: Lens' ImagesDeprecate' Text
imamProject
  = lens _imamProject (\ s a -> s{_imamProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
imamUserIp :: Lens' ImagesDeprecate' (Maybe Text)
imamUserIp
  = lens _imamUserIp (\ s a -> s{_imamUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
imamKey :: Lens' ImagesDeprecate' (Maybe Text)
imamKey = lens _imamKey (\ s a -> s{_imamKey = a})

-- | OAuth 2.0 token for the current user.
imamOauthToken :: Lens' ImagesDeprecate' (Maybe Text)
imamOauthToken
  = lens _imamOauthToken
      (\ s a -> s{_imamOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
imamFields :: Lens' ImagesDeprecate' (Maybe Text)
imamFields
  = lens _imamFields (\ s a -> s{_imamFields = a})

-- | Data format for the response.
imamAlt :: Lens' ImagesDeprecate' Alt
imamAlt = lens _imamAlt (\ s a -> s{_imamAlt = a})

instance GoogleRequest ImagesDeprecate' where
        type Rs ImagesDeprecate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesDeprecate'{..}
          = go _imamQuotaUser _imamImage
              (Just _imamPrettyPrint)
              _imamProject
              _imamUserIp
              _imamKey
              _imamOauthToken
              _imamFields
              (Just _imamAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ImagesDeprecateAPI)
                      r
                      u
