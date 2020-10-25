
# without the template
class Report
  def generate_report!
    retrieve_financial_data
    format_report
    send_to_stakeholders
  end

  private

  def retrieve_financial_data
    # Grab relevant data from our database
  end

  def format_report
    # take our financial data and arrange it in HTML format
  end

  def send_to_stakeholders
    # email this report to interested parties
  end
end


# with template

class ReportTemplate
  def generate_report!
    retrieve_financial_data
    format_report
    send_to_stakeholders
  end

  private

  def retrieve_financial_data
    # Grab relevant data from our database
  end

  def format_report
    raise NotImplementedError
  end

  def send_to_stakeholders
    # email this report to interested parties
  end
end

# different implimentation of reports
class TextReport < ReportTemplate
  def format_report
    # arrange financial data into plain text report
  end
end

class HTMLReport < ReportTemplate
  def format_report
    # arrange financial data into HTML report
  end
end
