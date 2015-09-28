{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Images.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified image resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.delete@.
module Network.Google.API.Compute.Images.Delete
    (
    -- * REST Resource
      ImagesDeleteAPI

    -- * Creating a Request
    , imagesDelete'
    , ImagesDelete'

    -- * Request Lenses
    , imaQuotaUser
    , imaImage
    , imaPrettyPrint
    , imaProject
    , imaUserIp
    , imaKey
    , imaOauthToken
    , imaFields
    , imaAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.images.delete which the
-- 'ImagesDelete'' request conforms to.
type ImagesDeleteAPI =
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
                         QueryParam "alt" Alt :> Delete '[JSON] Operation

-- | Deletes the specified image resource.
--
-- /See:/ 'imagesDelete'' smart constructor.
data ImagesDelete' = ImagesDelete'
    { _imaQuotaUser   :: !(Maybe Text)
    , _imaImage       :: !Text
    , _imaPrettyPrint :: !Bool
    , _imaProject     :: !Text
    , _imaUserIp      :: !(Maybe Text)
    , _imaKey         :: !(Maybe Text)
    , _imaOauthToken  :: !(Maybe Text)
    , _imaFields      :: !(Maybe Text)
    , _imaAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDelete'' with the minimum fields required to make a request.
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
-- * 'imaUserIp'
--
-- * 'imaKey'
--
-- * 'imaOauthToken'
--
-- * 'imaFields'
--
-- * 'imaAlt'
imagesDelete'
    :: Text -- ^ 'image'
    -> Text -- ^ 'project'
    -> ImagesDelete'
imagesDelete' pImaImage_ pImaProject_ =
    ImagesDelete'
    { _imaQuotaUser = Nothing
    , _imaImage = pImaImage_
    , _imaPrettyPrint = True
    , _imaProject = pImaProject_
    , _imaUserIp = Nothing
    , _imaKey = Nothing
    , _imaOauthToken = Nothing
    , _imaFields = Nothing
    , _imaAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
imaQuotaUser :: Lens' ImagesDelete' (Maybe Text)
imaQuotaUser
  = lens _imaQuotaUser (\ s a -> s{_imaQuotaUser = a})

-- | Name of the image resource to delete.
imaImage :: Lens' ImagesDelete' Text
imaImage = lens _imaImage (\ s a -> s{_imaImage = a})

-- | Returns response with indentations and line breaks.
imaPrettyPrint :: Lens' ImagesDelete' Bool
imaPrettyPrint
  = lens _imaPrettyPrint
      (\ s a -> s{_imaPrettyPrint = a})

-- | Project ID for this request.
imaProject :: Lens' ImagesDelete' Text
imaProject
  = lens _imaProject (\ s a -> s{_imaProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
imaUserIp :: Lens' ImagesDelete' (Maybe Text)
imaUserIp
  = lens _imaUserIp (\ s a -> s{_imaUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
imaKey :: Lens' ImagesDelete' (Maybe Text)
imaKey = lens _imaKey (\ s a -> s{_imaKey = a})

-- | OAuth 2.0 token for the current user.
imaOauthToken :: Lens' ImagesDelete' (Maybe Text)
imaOauthToken
  = lens _imaOauthToken
      (\ s a -> s{_imaOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
imaFields :: Lens' ImagesDelete' (Maybe Text)
imaFields
  = lens _imaFields (\ s a -> s{_imaFields = a})

-- | Data format for the response.
imaAlt :: Lens' ImagesDelete' Alt
imaAlt = lens _imaAlt (\ s a -> s{_imaAlt = a})

instance GoogleRequest ImagesDelete' where
        type Rs ImagesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesDelete'{..}
          = go _imaQuotaUser _imaImage (Just _imaPrettyPrint)
              _imaProject
              _imaUserIp
              _imaKey
              _imaOauthToken
              _imaFields
              (Just _imaAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ImagesDeleteAPI) r
                      u
