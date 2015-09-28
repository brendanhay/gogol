{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.API.Compute.Images.Get
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Returns the specified image resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @compute.images.get@.
module Network.Google.API.Compute.Images.Get
    (
    -- * REST Resource
      ImagesGetAPI

    -- * Creating a Request
    , imagesGet'
    , ImagesGet'

    -- * Request Lenses
    , igQuotaUser
    , igImage
    , igPrettyPrint
    , igProject
    , igUserIp
    , igKey
    , igOauthToken
    , igFields
    , igAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for compute.images.get which the
-- 'ImagesGet'' request conforms to.
type ImagesGetAPI =
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
    { _igQuotaUser   :: !(Maybe Text)
    , _igImage       :: !Text
    , _igPrettyPrint :: !Bool
    , _igProject     :: !Text
    , _igUserIp      :: !(Maybe Text)
    , _igKey         :: !(Maybe Text)
    , _igOauthToken  :: !(Maybe Text)
    , _igFields      :: !(Maybe Text)
    , _igAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesGet'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'igQuotaUser'
--
-- * 'igImage'
--
-- * 'igPrettyPrint'
--
-- * 'igProject'
--
-- * 'igUserIp'
--
-- * 'igKey'
--
-- * 'igOauthToken'
--
-- * 'igFields'
--
-- * 'igAlt'
imagesGet'
    :: Text -- ^ 'image'
    -> Text -- ^ 'project'
    -> ImagesGet'
imagesGet' pIgImage_ pIgProject_ =
    ImagesGet'
    { _igQuotaUser = Nothing
    , _igImage = pIgImage_
    , _igPrettyPrint = True
    , _igProject = pIgProject_
    , _igUserIp = Nothing
    , _igKey = Nothing
    , _igOauthToken = Nothing
    , _igFields = Nothing
    , _igAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
igQuotaUser :: Lens' ImagesGet' (Maybe Text)
igQuotaUser
  = lens _igQuotaUser (\ s a -> s{_igQuotaUser = a})

-- | Name of the image resource to return.
igImage :: Lens' ImagesGet' Text
igImage = lens _igImage (\ s a -> s{_igImage = a})

-- | Returns response with indentations and line breaks.
igPrettyPrint :: Lens' ImagesGet' Bool
igPrettyPrint
  = lens _igPrettyPrint
      (\ s a -> s{_igPrettyPrint = a})

-- | Project ID for this request.
igProject :: Lens' ImagesGet' Text
igProject
  = lens _igProject (\ s a -> s{_igProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
igUserIp :: Lens' ImagesGet' (Maybe Text)
igUserIp = lens _igUserIp (\ s a -> s{_igUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
igKey :: Lens' ImagesGet' (Maybe Text)
igKey = lens _igKey (\ s a -> s{_igKey = a})

-- | OAuth 2.0 token for the current user.
igOauthToken :: Lens' ImagesGet' (Maybe Text)
igOauthToken
  = lens _igOauthToken (\ s a -> s{_igOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
igFields :: Lens' ImagesGet' (Maybe Text)
igFields = lens _igFields (\ s a -> s{_igFields = a})

-- | Data format for the response.
igAlt :: Lens' ImagesGet' Alt
igAlt = lens _igAlt (\ s a -> s{_igAlt = a})

instance GoogleRequest ImagesGet' where
        type Rs ImagesGet' = Image
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesGet'{..}
          = go _igQuotaUser _igImage (Just _igPrettyPrint)
              _igProject
              _igUserIp
              _igKey
              _igOauthToken
              _igFields
              (Just _igAlt)
          where go
                  = clientWithRoute (Proxy :: Proxy ImagesGetAPI) r u
