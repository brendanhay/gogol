{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Images.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes the specified image resource.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeImagesDelete@.
module Compute.Images.Delete
    (
    -- * REST Resource
      ImagesDeleteAPI

    -- * Creating a Request
    , imagesDelete
    , ImagesDelete

    -- * Request Lenses
    , iQuotaUser
    , iImage
    , iPrettyPrint
    , iProject
    , iUserIp
    , iKey
    , iOauthToken
    , iFields
    , iAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeImagesDelete@ which the
-- 'ImagesDelete' request conforms to.
type ImagesDeleteAPI =
     Capture "project" Text :>
       "global" :>
         "images" :>
           Capture "image" Text :> Delete '[JSON] Operation

-- | Deletes the specified image resource.
--
-- /See:/ 'imagesDelete' smart constructor.
data ImagesDelete = ImagesDelete
    { _iQuotaUser   :: !(Maybe Text)
    , _iImage       :: !Text
    , _iPrettyPrint :: !Bool
    , _iProject     :: !Text
    , _iUserIp      :: !(Maybe Text)
    , _iKey         :: !(Maybe Text)
    , _iOauthToken  :: !(Maybe Text)
    , _iFields      :: !(Maybe Text)
    , _iAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'iQuotaUser'
--
-- * 'iImage'
--
-- * 'iPrettyPrint'
--
-- * 'iProject'
--
-- * 'iUserIp'
--
-- * 'iKey'
--
-- * 'iOauthToken'
--
-- * 'iFields'
--
-- * 'iAlt'
imagesDelete
    :: Text -- ^ 'image'
    -> Text -- ^ 'project'
    -> ImagesDelete
imagesDelete pIImage_ pIProject_ =
    ImagesDelete
    { _iQuotaUser = Nothing
    , _iImage = pIImage_
    , _iPrettyPrint = True
    , _iProject = pIProject_
    , _iUserIp = Nothing
    , _iKey = Nothing
    , _iOauthToken = Nothing
    , _iFields = Nothing
    , _iAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
iQuotaUser :: Lens' ImagesDelete' (Maybe Text)
iQuotaUser
  = lens _iQuotaUser (\ s a -> s{_iQuotaUser = a})

-- | Name of the image resource to delete.
iImage :: Lens' ImagesDelete' Text
iImage = lens _iImage (\ s a -> s{_iImage = a})

-- | Returns response with indentations and line breaks.
iPrettyPrint :: Lens' ImagesDelete' Bool
iPrettyPrint
  = lens _iPrettyPrint (\ s a -> s{_iPrettyPrint = a})

-- | Project ID for this request.
iProject :: Lens' ImagesDelete' Text
iProject = lens _iProject (\ s a -> s{_iProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
iUserIp :: Lens' ImagesDelete' (Maybe Text)
iUserIp = lens _iUserIp (\ s a -> s{_iUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
iKey :: Lens' ImagesDelete' (Maybe Text)
iKey = lens _iKey (\ s a -> s{_iKey = a})

-- | OAuth 2.0 token for the current user.
iOauthToken :: Lens' ImagesDelete' (Maybe Text)
iOauthToken
  = lens _iOauthToken (\ s a -> s{_iOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
iFields :: Lens' ImagesDelete' (Maybe Text)
iFields = lens _iFields (\ s a -> s{_iFields = a})

-- | Data format for the response.
iAlt :: Lens' ImagesDelete' Text
iAlt = lens _iAlt (\ s a -> s{_iAlt = a})

instance GoogleRequest ImagesDelete' where
        type Rs ImagesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesDelete{..}
          = go _iQuotaUser _iImage _iPrettyPrint _iProject
              _iUserIp
              _iKey
              _iOauthToken
              _iFields
              _iAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ImagesDeleteAPI) r
                      u
