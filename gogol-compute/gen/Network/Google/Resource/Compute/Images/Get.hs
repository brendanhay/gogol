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
    , imamUserIP
    , imamKey
    , imamOAuthToken
    , imamFields
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
                   QueryParam "fields" Text :>
                     QueryParam "key" Key :>
                       QueryParam "oauth_token" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Image

-- | Returns the specified image resource.
--
-- /See:/ 'imagesGet'' smart constructor.
data ImagesGet' = ImagesGet'
    { _imamQuotaUser   :: !(Maybe Text)
    , _imamImage       :: !Text
    , _imamPrettyPrint :: !Bool
    , _imamProject     :: !Text
    , _imamUserIP      :: !(Maybe Text)
    , _imamKey         :: !(Maybe Key)
    , _imamOAuthToken  :: !(Maybe OAuthToken)
    , _imamFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

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
-- * 'imamUserIP'
--
-- * 'imamKey'
--
-- * 'imamOAuthToken'
--
-- * 'imamFields'
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
    , _imamUserIP = Nothing
    , _imamKey = Nothing
    , _imamOAuthToken = Nothing
    , _imamFields = Nothing
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
imamUserIP :: Lens' ImagesGet' (Maybe Text)
imamUserIP
  = lens _imamUserIP (\ s a -> s{_imamUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
imamKey :: Lens' ImagesGet' (Maybe Key)
imamKey = lens _imamKey (\ s a -> s{_imamKey = a})

-- | OAuth 2.0 token for the current user.
imamOAuthToken :: Lens' ImagesGet' (Maybe OAuthToken)
imamOAuthToken
  = lens _imamOAuthToken
      (\ s a -> s{_imamOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
imamFields :: Lens' ImagesGet' (Maybe Text)
imamFields
  = lens _imamFields (\ s a -> s{_imamFields = a})

instance GoogleAuth ImagesGet' where
        authKey = imamKey . _Just
        authToken = imamOAuthToken . _Just

instance GoogleRequest ImagesGet' where
        type Rs ImagesGet' = Image
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesGet'{..}
          = go _imamProject _imamImage _imamQuotaUser
              (Just _imamPrettyPrint)
              _imamUserIP
              _imamFields
              _imamKey
              _imamOAuthToken
              (Just AltJSON)
          where go
                  = clientWithRoute (Proxy :: Proxy ImagesGetResource)
                      r
                      u
