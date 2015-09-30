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
-- Module      : Network.Google.Resource.Compute.Images.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified image resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeImagesGet@.
module Network.Google.Resource.Compute.Images.Get
    (
    -- * REST Resource
      ImagesGetResource

    -- * Creating a Request
    , imagesGet'
    , ImagesGet'

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

-- | A resource alias for @ComputeImagesGet@ which the
-- 'ImagesGet'' request conforms to.
type ImagesGetResource =
     Capture "project" Text :>
       "global" :>
         "images" :>
           Capture "image" Text :>
             QueryParam "quotaUser" Text :>
               QueryParam "prettyPrint" Bool :>
                 QueryParam "userIp" Text :>
                   QueryParam "key" Text :>
                     QueryParam "oauth_token" Text :>
                       QueryParam "fields" Text :>
                         QueryParam "alt" Alt :> Get '[JSON] Image

-- | Returns the specified image resource.
--
-- /See:/ 'imagesGet'' smart constructor.
data ImagesGet' = ImagesGet'
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

-- | Creates a value of 'ImagesGet'' with the minimum fields required to make a request.
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
imagesGet'
    :: Text -- ^ 'image'
    -> Text -- ^ 'project'
    -> ImagesGet'
imagesGet' pImamImage_ pImamProject_ =
    ImagesGet'
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
imamQuotaUser :: Lens' ImagesGet' (Maybe Text)
imamQuotaUser
  = lens _imamQuotaUser
      (\ s a -> s{_imamQuotaUser = a})

-- | Name of the image resource to return.
imamImage :: Lens' ImagesGet' Text
imamImage
  = lens _imamImage (\ s a -> s{_imamImage = a})

-- | Returns response with indentations and line breaks.
imamPrettyPrint :: Lens' ImagesGet' Bool
imamPrettyPrint
  = lens _imamPrettyPrint
      (\ s a -> s{_imamPrettyPrint = a})

-- | Project ID for this request.
imamProject :: Lens' ImagesGet' Text
imamProject
  = lens _imamProject (\ s a -> s{_imamProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
imamUserIp :: Lens' ImagesGet' (Maybe Text)
imamUserIp
  = lens _imamUserIp (\ s a -> s{_imamUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
imamKey :: Lens' ImagesGet' (Maybe Text)
imamKey = lens _imamKey (\ s a -> s{_imamKey = a})

-- | OAuth 2.0 token for the current user.
imamOauthToken :: Lens' ImagesGet' (Maybe Text)
imamOauthToken
  = lens _imamOauthToken
      (\ s a -> s{_imamOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
imamFields :: Lens' ImagesGet' (Maybe Text)
imamFields
  = lens _imamFields (\ s a -> s{_imamFields = a})

-- | Data format for the response.
imamAlt :: Lens' ImagesGet' Alt
imamAlt = lens _imamAlt (\ s a -> s{_imamAlt = a})

instance GoogleRequest ImagesGet' where
        type Rs ImagesGet' = Image
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesGet'{..}
          = go _imamQuotaUser _imamImage
              (Just _imamPrettyPrint)
              _imamProject
              _imamUserIp
              _imamKey
              _imamOauthToken
              _imamFields
              (Just _imamAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ImagesGetResource)
                      r
                      u
