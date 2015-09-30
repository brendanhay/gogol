{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Compute.Images.Deprecate
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
--
-- /See:/ <https://developers.google.com/compute/docs/reference/latest/ Compute Engine API Reference> for @ComputeImagesDeprecate@.
module Compute.Images.Deprecate
    (
    -- * REST Resource
      ImagesDeprecateAPI

    -- * Creating a Request
    , imagesDeprecate
    , ImagesDeprecate

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

-- | A resource alias for @ComputeImagesDeprecate@ which the
-- 'ImagesDeprecate' request conforms to.
type ImagesDeprecateAPI =
     Capture "project" Text :>
       "global" :>
         "images" :>
           Capture "image" Text :>
             "deprecate" :> Post '[JSON] Operation

-- | Sets the deprecation status of an image. If an empty request body is
-- given, clears the deprecation status instead.
--
-- /See:/ 'imagesDeprecate' smart constructor.
data ImagesDeprecate = ImagesDeprecate
    { _idQuotaUser   :: !(Maybe Text)
    , _idImage       :: !Text
    , _idPrettyPrint :: !Bool
    , _idProject     :: !Text
    , _idUserIp      :: !(Maybe Text)
    , _idKey         :: !(Maybe Text)
    , _idOauthToken  :: !(Maybe Text)
    , _idFields      :: !(Maybe Text)
    , _idAlt         :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'ImagesDeprecate'' with the minimum fields required to make a request.
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
imagesDeprecate
    :: Text -- ^ 'image'
    -> Text -- ^ 'project'
    -> ImagesDeprecate
imagesDeprecate pIdImage_ pIdProject_ =
    ImagesDeprecate
    { _idQuotaUser = Nothing
    , _idImage = pIdImage_
    , _idPrettyPrint = True
    , _idProject = pIdProject_
    , _idUserIp = Nothing
    , _idKey = Nothing
    , _idOauthToken = Nothing
    , _idFields = Nothing
    , _idAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
idQuotaUser :: Lens' ImagesDeprecate' (Maybe Text)
idQuotaUser
  = lens _idQuotaUser (\ s a -> s{_idQuotaUser = a})

-- | Image name.
idImage :: Lens' ImagesDeprecate' Text
idImage = lens _idImage (\ s a -> s{_idImage = a})

-- | Returns response with indentations and line breaks.
idPrettyPrint :: Lens' ImagesDeprecate' Bool
idPrettyPrint
  = lens _idPrettyPrint
      (\ s a -> s{_idPrettyPrint = a})

-- | Project ID for this request.
idProject :: Lens' ImagesDeprecate' Text
idProject
  = lens _idProject (\ s a -> s{_idProject = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
idUserIp :: Lens' ImagesDeprecate' (Maybe Text)
idUserIp = lens _idUserIp (\ s a -> s{_idUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
idKey :: Lens' ImagesDeprecate' (Maybe Text)
idKey = lens _idKey (\ s a -> s{_idKey = a})

-- | OAuth 2.0 token for the current user.
idOauthToken :: Lens' ImagesDeprecate' (Maybe Text)
idOauthToken
  = lens _idOauthToken (\ s a -> s{_idOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
idFields :: Lens' ImagesDeprecate' (Maybe Text)
idFields = lens _idFields (\ s a -> s{_idFields = a})

-- | Data format for the response.
idAlt :: Lens' ImagesDeprecate' Text
idAlt = lens _idAlt (\ s a -> s{_idAlt = a})

instance GoogleRequest ImagesDeprecate' where
        type Rs ImagesDeprecate' = Operation
        request = requestWithRoute defReq computeURL
        requestWithRoute r u ImagesDeprecate{..}
          = go _idQuotaUser _idImage _idPrettyPrint _idProject
              _idUserIp
              _idKey
              _idOauthToken
              _idFields
              _idAlt
          where go
                  = clientWithRoute (Proxy :: Proxy ImagesDeprecateAPI)
                      r
                      u
