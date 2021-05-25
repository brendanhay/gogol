{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric      #-}
{-# LANGUAGE NoImplicitPrelude  #-}
{-# LANGUAGE OverloadedStrings  #-}
{-# LANGUAGE RecordWildCards    #-}

{-# OPTIONS_GHC -fno-warn-unused-binds   #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- |
-- Module      : Network.Google.DataTransfer.Types.Product
-- Copyright   : (c) 2015-2016 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
module Network.Google.DataTransfer.Types.Product where

import Network.Google.DataTransfer.Types.Sum
import Network.Google.Prelude

-- | Applications resources represent applications installed on the domain
-- that support transferring ownership of user data.
--
-- /See:/ 'application' smart constructor.
data Application =
  Application'
    { _aTransferParams :: !(Maybe [ApplicationTransferParam])
    , _aEtag :: !(Maybe Text)
    , _aKind :: !Text
    , _aName :: !(Maybe Text)
    , _aId :: !(Maybe (Textual Int64))
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'Application' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'aTransferParams'
--
-- * 'aEtag'
--
-- * 'aKind'
--
-- * 'aName'
--
-- * 'aId'
application
    :: Application
application =
  Application'
    { _aTransferParams = Nothing
    , _aEtag = Nothing
    , _aKind = "admin#datatransfer#ApplicationResource"
    , _aName = Nothing
    , _aId = Nothing
    }


-- | The list of all possible transfer parameters for this application. These
-- parameters can be used to select the data of the user in this
-- application to be transferred.
aTransferParams :: Lens' Application [ApplicationTransferParam]
aTransferParams
  = lens _aTransferParams
      (\ s a -> s{_aTransferParams = a})
      . _Default
      . _Coerce

-- | Etag of the resource.
aEtag :: Lens' Application (Maybe Text)
aEtag = lens _aEtag (\ s a -> s{_aEtag = a})

-- | Identifies the resource as a DataTransfer Application Resource.
aKind :: Lens' Application Text
aKind = lens _aKind (\ s a -> s{_aKind = a})

-- | The application\'s name.
aName :: Lens' Application (Maybe Text)
aName = lens _aName (\ s a -> s{_aName = a})

-- | The application\'s ID.
aId :: Lens' Application (Maybe Int64)
aId
  = lens _aId (\ s a -> s{_aId = a}) . mapping _Coerce

instance FromJSON Application where
        parseJSON
          = withObject "Application"
              (\ o ->
                 Application' <$>
                   (o .:? "transferParams" .!= mempty) <*>
                     (o .:? "etag")
                     <*>
                     (o .:? "kind" .!=
                        "admin#datatransfer#ApplicationResource")
                     <*> (o .:? "name")
                     <*> (o .:? "id"))

instance ToJSON Application where
        toJSON Application'{..}
          = object
              (catMaybes
                 [("transferParams" .=) <$> _aTransferParams,
                  ("etag" .=) <$> _aEtag, Just ("kind" .= _aKind),
                  ("name" .=) <$> _aName, ("id" .=) <$> _aId])

-- | Template for application transfer parameters.
--
-- /See:/ 'applicationTransferParam' smart constructor.
data ApplicationTransferParam =
  ApplicationTransferParam'
    { _atpValue :: !(Maybe [Text])
    , _atpKey :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationTransferParam' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'atpValue'
--
-- * 'atpKey'
applicationTransferParam
    :: ApplicationTransferParam
applicationTransferParam =
  ApplicationTransferParam' {_atpValue = Nothing, _atpKey = Nothing}


-- | The value of the corresponding transfer parameter. eg: \'PRIVATE\' or
-- \'SHARED\'
atpValue :: Lens' ApplicationTransferParam [Text]
atpValue
  = lens _atpValue (\ s a -> s{_atpValue = a}) .
      _Default
      . _Coerce

-- | The type of the transfer parameter. eg: \'PRIVACY_LEVEL\'
atpKey :: Lens' ApplicationTransferParam (Maybe Text)
atpKey = lens _atpKey (\ s a -> s{_atpKey = a})

instance FromJSON ApplicationTransferParam where
        parseJSON
          = withObject "ApplicationTransferParam"
              (\ o ->
                 ApplicationTransferParam' <$>
                   (o .:? "value" .!= mempty) <*> (o .:? "key"))

instance ToJSON ApplicationTransferParam where
        toJSON ApplicationTransferParam'{..}
          = object
              (catMaybes
                 [("value" .=) <$> _atpValue, ("key" .=) <$> _atpKey])

-- | Template for a collection of Applications.
--
-- /See:/ 'applicationsListResponse' smart constructor.
data ApplicationsListResponse =
  ApplicationsListResponse'
    { _alrEtag :: !(Maybe Text)
    , _alrNextPageToken :: !(Maybe Text)
    , _alrKind :: !Text
    , _alrApplications :: !(Maybe [Application])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationsListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'alrEtag'
--
-- * 'alrNextPageToken'
--
-- * 'alrKind'
--
-- * 'alrApplications'
applicationsListResponse
    :: ApplicationsListResponse
applicationsListResponse =
  ApplicationsListResponse'
    { _alrEtag = Nothing
    , _alrNextPageToken = Nothing
    , _alrKind = "admin#datatransfer#applicationsList"
    , _alrApplications = Nothing
    }


-- | ETag of the resource.
alrEtag :: Lens' ApplicationsListResponse (Maybe Text)
alrEtag = lens _alrEtag (\ s a -> s{_alrEtag = a})

-- | Continuation token which will be used to specify next page in list API.
alrNextPageToken :: Lens' ApplicationsListResponse (Maybe Text)
alrNextPageToken
  = lens _alrNextPageToken
      (\ s a -> s{_alrNextPageToken = a})

-- | Identifies the resource as a collection of Applications.
alrKind :: Lens' ApplicationsListResponse Text
alrKind = lens _alrKind (\ s a -> s{_alrKind = a})

-- | List of applications that support data transfer and are also installed
-- for the customer.
alrApplications :: Lens' ApplicationsListResponse [Application]
alrApplications
  = lens _alrApplications
      (\ s a -> s{_alrApplications = a})
      . _Default
      . _Coerce

instance FromJSON ApplicationsListResponse where
        parseJSON
          = withObject "ApplicationsListResponse"
              (\ o ->
                 ApplicationsListResponse' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "admin#datatransfer#applicationsList")
                     <*> (o .:? "applications" .!= mempty))

instance ToJSON ApplicationsListResponse where
        toJSON ApplicationsListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _alrEtag,
                  ("nextPageToken" .=) <$> _alrNextPageToken,
                  Just ("kind" .= _alrKind),
                  ("applications" .=) <$> _alrApplications])

-- | A Transfer resource represents the transfer of the ownership of user
-- data between users.
--
-- /See:/ 'dataTransfer' smart constructor.
data DataTransfer =
  DataTransfer'
    { _dtEtag :: !(Maybe Text)
    , _dtOldOwnerUserId :: !(Maybe Text)
    , _dtKind :: !Text
    , _dtNewOwnerUserId :: !(Maybe Text)
    , _dtRequestTime :: !(Maybe DateTime')
    , _dtApplicationDataTransfers :: !(Maybe [ApplicationDataTransfer])
    , _dtId :: !(Maybe Text)
    , _dtOverallTransferStatusCode :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataTransfer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtEtag'
--
-- * 'dtOldOwnerUserId'
--
-- * 'dtKind'
--
-- * 'dtNewOwnerUserId'
--
-- * 'dtRequestTime'
--
-- * 'dtApplicationDataTransfers'
--
-- * 'dtId'
--
-- * 'dtOverallTransferStatusCode'
dataTransfer
    :: DataTransfer
dataTransfer =
  DataTransfer'
    { _dtEtag = Nothing
    , _dtOldOwnerUserId = Nothing
    , _dtKind = "admin#datatransfer#DataTransfer"
    , _dtNewOwnerUserId = Nothing
    , _dtRequestTime = Nothing
    , _dtApplicationDataTransfers = Nothing
    , _dtId = Nothing
    , _dtOverallTransferStatusCode = Nothing
    }


-- | ETag of the resource.
dtEtag :: Lens' DataTransfer (Maybe Text)
dtEtag = lens _dtEtag (\ s a -> s{_dtEtag = a})

-- | ID of the user whose data is being transferred.
dtOldOwnerUserId :: Lens' DataTransfer (Maybe Text)
dtOldOwnerUserId
  = lens _dtOldOwnerUserId
      (\ s a -> s{_dtOldOwnerUserId = a})

-- | Identifies the resource as a DataTransfer request.
dtKind :: Lens' DataTransfer Text
dtKind = lens _dtKind (\ s a -> s{_dtKind = a})

-- | ID of the user to whom the data is being transferred.
dtNewOwnerUserId :: Lens' DataTransfer (Maybe Text)
dtNewOwnerUserId
  = lens _dtNewOwnerUserId
      (\ s a -> s{_dtNewOwnerUserId = a})

-- | The time at which the data transfer was requested (Read-only).
dtRequestTime :: Lens' DataTransfer (Maybe UTCTime)
dtRequestTime
  = lens _dtRequestTime
      (\ s a -> s{_dtRequestTime = a})
      . mapping _DateTime

-- | List of per application data transfer resources. It contains data
-- transfer details of the applications associated with this transfer
-- resource. Note that this list is also used to specify the applications
-- for which data transfer has to be done at the time of the transfer
-- resource creation.
dtApplicationDataTransfers :: Lens' DataTransfer [ApplicationDataTransfer]
dtApplicationDataTransfers
  = lens _dtApplicationDataTransfers
      (\ s a -> s{_dtApplicationDataTransfers = a})
      . _Default
      . _Coerce

-- | The transfer\'s ID (Read-only).
dtId :: Lens' DataTransfer (Maybe Text)
dtId = lens _dtId (\ s a -> s{_dtId = a})

-- | Overall transfer status (Read-only).
dtOverallTransferStatusCode :: Lens' DataTransfer (Maybe Text)
dtOverallTransferStatusCode
  = lens _dtOverallTransferStatusCode
      (\ s a -> s{_dtOverallTransferStatusCode = a})

instance FromJSON DataTransfer where
        parseJSON
          = withObject "DataTransfer"
              (\ o ->
                 DataTransfer' <$>
                   (o .:? "etag") <*> (o .:? "oldOwnerUserId") <*>
                     (o .:? "kind" .!= "admin#datatransfer#DataTransfer")
                     <*> (o .:? "newOwnerUserId")
                     <*> (o .:? "requestTime")
                     <*> (o .:? "applicationDataTransfers" .!= mempty)
                     <*> (o .:? "id")
                     <*> (o .:? "overallTransferStatusCode"))

instance ToJSON DataTransfer where
        toJSON DataTransfer'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _dtEtag,
                  ("oldOwnerUserId" .=) <$> _dtOldOwnerUserId,
                  Just ("kind" .= _dtKind),
                  ("newOwnerUserId" .=) <$> _dtNewOwnerUserId,
                  ("requestTime" .=) <$> _dtRequestTime,
                  ("applicationDataTransfers" .=) <$>
                    _dtApplicationDataTransfers,
                  ("id" .=) <$> _dtId,
                  ("overallTransferStatusCode" .=) <$>
                    _dtOverallTransferStatusCode])

-- | Template for a collection of DataTransfer resources.
--
-- /See:/ 'dataTransfersListResponse' smart constructor.
data DataTransfersListResponse =
  DataTransfersListResponse'
    { _dtlrEtag :: !(Maybe Text)
    , _dtlrNextPageToken :: !(Maybe Text)
    , _dtlrKind :: !Text
    , _dtlrDataTransfers :: !(Maybe [DataTransfer])
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'DataTransfersListResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dtlrEtag'
--
-- * 'dtlrNextPageToken'
--
-- * 'dtlrKind'
--
-- * 'dtlrDataTransfers'
dataTransfersListResponse
    :: DataTransfersListResponse
dataTransfersListResponse =
  DataTransfersListResponse'
    { _dtlrEtag = Nothing
    , _dtlrNextPageToken = Nothing
    , _dtlrKind = "admin#datatransfer#dataTransfersList"
    , _dtlrDataTransfers = Nothing
    }


-- | ETag of the resource.
dtlrEtag :: Lens' DataTransfersListResponse (Maybe Text)
dtlrEtag = lens _dtlrEtag (\ s a -> s{_dtlrEtag = a})

-- | Continuation token which will be used to specify next page in list API.
dtlrNextPageToken :: Lens' DataTransfersListResponse (Maybe Text)
dtlrNextPageToken
  = lens _dtlrNextPageToken
      (\ s a -> s{_dtlrNextPageToken = a})

-- | Identifies the resource as a collection of data transfer requests.
dtlrKind :: Lens' DataTransfersListResponse Text
dtlrKind = lens _dtlrKind (\ s a -> s{_dtlrKind = a})

-- | List of data transfer requests.
dtlrDataTransfers :: Lens' DataTransfersListResponse [DataTransfer]
dtlrDataTransfers
  = lens _dtlrDataTransfers
      (\ s a -> s{_dtlrDataTransfers = a})
      . _Default
      . _Coerce

instance FromJSON DataTransfersListResponse where
        parseJSON
          = withObject "DataTransfersListResponse"
              (\ o ->
                 DataTransfersListResponse' <$>
                   (o .:? "etag") <*> (o .:? "nextPageToken") <*>
                     (o .:? "kind" .!=
                        "admin#datatransfer#dataTransfersList")
                     <*> (o .:? "dataTransfers" .!= mempty))

instance ToJSON DataTransfersListResponse where
        toJSON DataTransfersListResponse'{..}
          = object
              (catMaybes
                 [("etag" .=) <$> _dtlrEtag,
                  ("nextPageToken" .=) <$> _dtlrNextPageToken,
                  Just ("kind" .= _dtlrKind),
                  ("dataTransfers" .=) <$> _dtlrDataTransfers])

-- | Template to map fields of ApplicationDataTransfer resource.
--
-- /See:/ 'applicationDataTransfer' smart constructor.
data ApplicationDataTransfer =
  ApplicationDataTransfer'
    { _adtApplicationTransferParams :: !(Maybe [ApplicationTransferParam])
    , _adtApplicationId :: !(Maybe (Textual Int64))
    , _adtApplicationTransferStatus :: !(Maybe Text)
    }
  deriving (Eq, Show, Data, Typeable, Generic)


-- | Creates a value of 'ApplicationDataTransfer' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'adtApplicationTransferParams'
--
-- * 'adtApplicationId'
--
-- * 'adtApplicationTransferStatus'
applicationDataTransfer
    :: ApplicationDataTransfer
applicationDataTransfer =
  ApplicationDataTransfer'
    { _adtApplicationTransferParams = Nothing
    , _adtApplicationId = Nothing
    , _adtApplicationTransferStatus = Nothing
    }


-- | The transfer parameters for the application. These parameters are used
-- to select the data which will get transferred in context of this
-- application.
adtApplicationTransferParams :: Lens' ApplicationDataTransfer [ApplicationTransferParam]
adtApplicationTransferParams
  = lens _adtApplicationTransferParams
      (\ s a -> s{_adtApplicationTransferParams = a})
      . _Default
      . _Coerce

-- | The application\'s ID.
adtApplicationId :: Lens' ApplicationDataTransfer (Maybe Int64)
adtApplicationId
  = lens _adtApplicationId
      (\ s a -> s{_adtApplicationId = a})
      . mapping _Coerce

-- | Current status of transfer for this application. (Read-only)
adtApplicationTransferStatus :: Lens' ApplicationDataTransfer (Maybe Text)
adtApplicationTransferStatus
  = lens _adtApplicationTransferStatus
      (\ s a -> s{_adtApplicationTransferStatus = a})

instance FromJSON ApplicationDataTransfer where
        parseJSON
          = withObject "ApplicationDataTransfer"
              (\ o ->
                 ApplicationDataTransfer' <$>
                   (o .:? "applicationTransferParams" .!= mempty) <*>
                     (o .:? "applicationId")
                     <*> (o .:? "applicationTransferStatus"))

instance ToJSON ApplicationDataTransfer where
        toJSON ApplicationDataTransfer'{..}
          = object
              (catMaybes
                 [("applicationTransferParams" .=) <$>
                    _adtApplicationTransferParams,
                  ("applicationId" .=) <$> _adtApplicationId,
                  ("applicationTransferStatus" .=) <$>
                    _adtApplicationTransferStatus])
