{-# LANGUAGE DataKinds          #-}
{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE RecordWildCards    #-}
{-# LANGUAGE TypeFamilies       #-}
{-# LANGUAGE TypeOperators      #-}

{-# OPTIONS_GHC -fno-warn-unused-imports    #-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports #-}

-- |
-- Module      : Network.Google.Resource.Books.Mylibrary.Annotations.Delete
-- Copyright   : (c) 2015 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- | Deletes an annotation.
--
-- /See:/ <https://developers.google.com/books/docs/v1/getting_started Books API Reference> for @BooksMylibraryAnnotationsDelete@.
module Books.Mylibrary.Annotations.Delete
    (
    -- * REST Resource
      MylibraryAnnotationsDeleteAPI

    -- * Creating a Request
    , mylibraryAnnotationsDelete
    , MylibraryAnnotationsDelete

    -- * Request Lenses
    , madQuotaUser
    , madPrettyPrint
    , madUserIp
    , madKey
    , madAnnotationId
    , madSource
    , madOauthToken
    , madFields
    , madAlt
    ) where

import           Network.Google.Books.Types
import           Network.Google.Prelude

-- | A resource alias for @BooksMylibraryAnnotationsDelete@ which the
-- 'MylibraryAnnotationsDelete' request conforms to.
type MylibraryAnnotationsDeleteAPI =
     "mylibrary" :>
       "annotations" :>
         Capture "annotationId" Text :>
           QueryParam "source" Text :> Delete '[JSON] ()

-- | Deletes an annotation.
--
-- /See:/ 'mylibraryAnnotationsDelete' smart constructor.
data MylibraryAnnotationsDelete = MylibraryAnnotationsDelete
    { _madQuotaUser    :: !(Maybe Text)
    , _madPrettyPrint  :: !Bool
    , _madUserIp       :: !(Maybe Text)
    , _madKey          :: !(Maybe Text)
    , _madAnnotationId :: !Text
    , _madSource       :: !(Maybe Text)
    , _madOauthToken   :: !(Maybe Text)
    , _madFields       :: !(Maybe Text)
    , _madAlt          :: !Text
    } deriving (Eq,Read,Show,Data,Typeable,Generic)

-- | Creates a value of 'MylibraryAnnotationsDelete'' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'madQuotaUser'
--
-- * 'madPrettyPrint'
--
-- * 'madUserIp'
--
-- * 'madKey'
--
-- * 'madAnnotationId'
--
-- * 'madSource'
--
-- * 'madOauthToken'
--
-- * 'madFields'
--
-- * 'madAlt'
mylibraryAnnotationsDelete
    :: Text -- ^ 'annotationId'
    -> MylibraryAnnotationsDelete
mylibraryAnnotationsDelete pMadAnnotationId_ =
    MylibraryAnnotationsDelete
    { _madQuotaUser = Nothing
    , _madPrettyPrint = True
    , _madUserIp = Nothing
    , _madKey = Nothing
    , _madAnnotationId = pMadAnnotationId_
    , _madSource = Nothing
    , _madOauthToken = Nothing
    , _madFields = Nothing
    , _madAlt = "json"
    }

-- | Available to use for quota purposes for server-side applications. Can be
-- any arbitrary string assigned to a user, but should not exceed 40
-- characters. Overrides userIp if both are provided.
madQuotaUser :: Lens' MylibraryAnnotationsDelete' (Maybe Text)
madQuotaUser
  = lens _madQuotaUser (\ s a -> s{_madQuotaUser = a})

-- | Returns response with indentations and line breaks.
madPrettyPrint :: Lens' MylibraryAnnotationsDelete' Bool
madPrettyPrint
  = lens _madPrettyPrint
      (\ s a -> s{_madPrettyPrint = a})

-- | IP address of the site where the request originates. Use this if you
-- want to enforce per-user limits.
madUserIp :: Lens' MylibraryAnnotationsDelete' (Maybe Text)
madUserIp
  = lens _madUserIp (\ s a -> s{_madUserIp = a})

-- | API key. Your API key identifies your project and provides you with API
-- access, quota, and reports. Required unless you provide an OAuth 2.0
-- token.
madKey :: Lens' MylibraryAnnotationsDelete' (Maybe Text)
madKey = lens _madKey (\ s a -> s{_madKey = a})

-- | The ID for the annotation to delete.
madAnnotationId :: Lens' MylibraryAnnotationsDelete' Text
madAnnotationId
  = lens _madAnnotationId
      (\ s a -> s{_madAnnotationId = a})

-- | String to identify the originator of this request.
madSource :: Lens' MylibraryAnnotationsDelete' (Maybe Text)
madSource
  = lens _madSource (\ s a -> s{_madSource = a})

-- | OAuth 2.0 token for the current user.
madOauthToken :: Lens' MylibraryAnnotationsDelete' (Maybe Text)
madOauthToken
  = lens _madOauthToken
      (\ s a -> s{_madOauthToken = a})

-- | Selector specifying which fields to include in a partial response.
madFields :: Lens' MylibraryAnnotationsDelete' (Maybe Text)
madFields
  = lens _madFields (\ s a -> s{_madFields = a})

-- | Data format for the response.
madAlt :: Lens' MylibraryAnnotationsDelete' Text
madAlt = lens _madAlt (\ s a -> s{_madAlt = a})

instance GoogleRequest MylibraryAnnotationsDelete'
         where
        type Rs MylibraryAnnotationsDelete' = ()
        request = requestWithRoute defReq booksURL
        requestWithRoute r u MylibraryAnnotationsDelete{..}
          = go _madQuotaUser _madPrettyPrint _madUserIp _madKey
              _madAnnotationId
              _madSource
              _madOauthToken
              _madFields
              _madAlt
          where go
                  = clientWithRoute
                      (Proxy :: Proxy MylibraryAnnotationsDeleteAPI)
                      r
                      u
