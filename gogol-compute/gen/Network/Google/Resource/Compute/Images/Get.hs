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
    , imaQuotaUser
    , imaImage
    , imaPrettyPrint
    , imaProject
    , imaUserIP
    , imaKey
    , imaOAuthToken
    , imaFields
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeImagesGet@ method which the
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
                     QueryParam "key" AuthKey :>
                       Header "Authorization" OAuthToken :>
                         QueryParam "alt" AltJSON :> Get '[JSON] Image

-- | Returns the specified image resource.
--
-- /See:/ 'imagesGet'' smart constructor.
data ImagesGet' = ImagesGet'
    { _imaQuotaUser   :: !(Maybe Text)
    , _imaImage       :: !Text
    , _imaPrettyPrint :: !Bool
    , _imaProject     :: !Text
    , _imaUserIP      :: !(Maybe Text)
    , _imaKey         :: !(Maybe AuthKey)
    , _imaOAuthToken  :: !(Maybe OAuthToken)
    , _imaFields      :: !(Maybe Text)
    } deriving (Eq,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'imaQuotaUser'
--
-- * 'imaImage'
--
-- * 'imaPrettyPrint'
--
-- * 'imaProject'
--
-- * 'imaUserIP'
--
-- * 'imaKey'
--
-- * 'imaOAuthToken'
--
-- * 'imaFields'
imagesGet'
    :: Text -- ^ 'image'
    -> Text -- ^ 'project'
    -> ImagesGet'
imagesGet' pImaImage_ pImaProject_ =
    ImagesGet'
    { _imaQuotaUser = Nothing
    , _imaImage = pImaImage_
    , _imaPrettyPrint = True
    , _imaProject = pImaProject_
    , _imaUserIP = Nothing
    , _imaKey = Nothing
    , _imaOAuthToken = Nothing
    , _imaFields = Nothing
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
imaQuotaUser :: Lens' ImagesGet' (Maybe Text)
imaQuotaUser
  = lens _imaQuotaUser (\ s a -> s{_imaQuotaUser = a})

-- | Name of the image resource to return.
imaImage :: Lens' ImagesGet' Text
imaImage = lens _imaImage (\ s a -> s{_imaImage = a})

-- | Returns response with indentations and line breaks.
imaPrettyPrint :: Lens' ImagesGet' Bool
imaPrettyPrint
  = lens _imaPrettyPrint
      (\ s a -> s{_imaPrettyPrint = a})

-- | Project ID for this request.
imaProject :: Lens' ImagesGet' Text
imaProject
  = lens _imaProject (\ s a -> s{_imaProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
imaUserIP :: Lens' ImagesGet' (Maybe Text)
imaUserIP
  = lens _imaUserIP (\ s a -> s{_imaUserIP = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
imaKey :: Lens' ImagesGet' (Maybe AuthKey)
imaKey = lens _imaKey (\ s a -> s{_imaKey = a})

-- | OAuth 2.0 token for the current user.
imaOAuthToken :: Lens' ImagesGet' (Maybe OAuthToken)
imaOAuthToken
  = lens _imaOAuthToken
      (\ s a -> s{_imaOAuthToken = a})

-- | Selector specifying which fields to include in a partial response.
imaFields :: Lens' ImagesGet' (Maybe Text)
imaFields
  = lens _imaFields (\ s a -> s{_imaFields = a})

instance GoogleAuth ImagesGet' where
        _AuthKey = imaKey . _Just
        _AuthToken = imaOAuthToken . _Just

instance GoogleRequest ImagesGet' where
        type Rs ImagesGet' = Image
        request = requestWith computeRequest
        requestWith rq ImagesGet'{..}
          = go _imaProject _imaImage _imaQuotaUser
              (Just _imaPrettyPrint)
              _imaUserIP
              _imaFields
              _imaKey
              _imaOAuthToken
              (Just AltJSON)
          where go
                  = clientBuild (Proxy :: Proxy ImagesGetResource) rq
