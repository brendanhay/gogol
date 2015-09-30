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
module Network.Google.Resource.Compute.Images.Delete
    (
    -- * REST Resource
      ImagesDeleteResource

    -- * Creating a Request
    , imagesDelete'
    , ImagesDelete'

    -- * Request Lenses
    , idQuotaUser
    , idImage
    , idPrettyPrint
    , idProject
    , idUserIp
    , idKey
    , idOauthToken
    , idFields
    , idAlt
    ) where

import           Network.Google.Compute.Types
import           Network.Google.Prelude

-- | A resource alias for @ComputeImagesDelete@ which the
-- 'ImagesDelete'' request conforms to.
type ImagesDeleteResource =
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
    { _idQuotaUser   :: !(Maybe Text)
    , _idImage       :: !Text
    , _idPrettyPrint :: !Bool
    , _idProject     :: !Text
    , _idUserIp      :: !(Maybe Text)
    , _idKey         :: !(Maybe Text)
    , _idOauthToken  :: !(Maybe Text)
    , _idFields      :: !(Maybe Text)
    , _idAlt         :: !Alt
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'idQuotaUser'
--
-- * 'idImage'
--
-- * 'idPrettyPrint'
--
-- * 'idProject'
--
-- * 'idUserIp'
--
-- * 'idKey'
--
-- * 'idOauthToken'
--
-- * 'idFields'
--
-- * 'idAlt'
imagesDelete'
    :: Text -- ^ 'image'
    -> Text -- ^ 'project'
    -> ImagesDelete'
imagesDelete' pIdImage_ pIdProject_ =
    ImagesDelete'
    { _idQuotaUser = Nothing
    , _idImage = pIdImage_
    , _idPrettyPrint = True
    , _idProject = pIdProject_
    , _idUserIp = Nothing
    , _idKey = Nothing
    , _idOauthToken = Nothing
    , _idFields = Nothing
    , _idAlt = JSON
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
idQuotaUser :: Lens' ImagesDelete' (Maybe Text)
idQuotaUser
  = lens _idQuotaUser (\ s a -> s{_idQuotaUser = a})

-- | Name of the image resource to delete.
idImage :: Lens' ImagesDelete' Text
idImage = lens _idImage (\ s a -> s{_idImage = a})

-- | Returns response with indentations and line breaks.
idPrettyPrint :: Lens' ImagesDelete' Bool
idPrettyPrint
  = lens _idPrettyPrint
      (\ s a -> s{_idPrettyPrint = a})

-- | Project ID for this request.
idProject :: Lens' ImagesDelete' Text
idProject
  = lens _idProject (\ s a -> s{_idProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
idUserIp :: Lens' ImagesDelete' (Maybe Text)
idUserIp = lens _idUserIp (\ s a -> s{_idUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
idKey :: Lens' ImagesDelete' (Maybe Text)
idKey = lens _idKey (\ s a -> s{_idKey = a})

-- | OAuth 2.0 token for the current user.
idOauthToken :: Lens' ImagesDelete' (Maybe Text)
idOauthToken
  = lens _idOauthToken (\ s a -> s{_idOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
idFields :: Lens' ImagesDelete' (Maybe Text)
idFields = lens _idFields (\ s a -> s{_idFields = a})

-- | Data format for the response.
idAlt :: Lens' ImagesDelete' Alt
idAlt = lens _idAlt (\ s a -> s{_idAlt = a})

instance GoogleRequest ImagesDelete' where
        type Rs ImagesDelete' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesDelete'{..}
          = go _idQuotaUser _idImage (Just _idPrettyPrint)
              _idProject
              _idUserIp
              _idKey
              _idOauthToken
              _idFields
              (Just _idAlt)
          where go
                  = clientWithRoute
                      (Proxy :: Proxy ImagesDeleteResource)
                      r
                      u
